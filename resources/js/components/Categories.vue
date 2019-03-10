<template>
    <div class="container">
        <div class="row mt-5 justify-content-center" v-if="$gate.isAdminOrAuthor()">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Categories Table</h3>

                        <div class="card-tools">
                            <button class="btn btn-success" @click="newModal">Add New <i
                                class="fas fa-user-plus fa-fw"></i>
                            </button>
                        </div>
                    
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body table-responsive p-0">
                        <table class="table table-hover">
                            <tbody>
                            <tr>
                                <th>Name</th>
                                <th>slug</th>
                                <th>isActive</th>
                                <th>Modify</th>
                            </tr>

                            <tr v-for="category in categories.data" :key="category.id">
                                <td>{{category.name}}</td>
                                <td>{{category.slug}}</td>
                                <td>{{category.isActive | upText}}</td>
                                <td>
                                    <a href="javascript:void(0)" @click="editModal(category)">
                                        <i class="fa fa-edit blue"></i>
                                    </a>

                                    <a href="javascript:void(0)" @click="deleteCategory(category.id)">
                                        <i class="fa fa-trash red"></i>
                                    </a>

                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- /.card-body -->
                    <div class="card-footer">
                        <pagination :data="categories" @pagination-change-page="getResults"></pagination>
                    </div>
                </div>
                <!-- /.card -->
            </div>
        </div>
        <div v-if="!$gate.isAdminOrAuthor()">
            <not-found></not-found>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="addNew" tabindex="-1" role="dialog" aria-labelledby="addNewLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" v-show="!editMode" id="addNewLabel">Add New</h5>
                        <h5 class="modal-title" v-show="editMode" id="addNewLabel">Update User's Info</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form @submit.prevent="editMode ? updateCategory() : createCategory()">
                        <div class="modal-body">
                            <div class="form-group">
                                <input v-model="form.name" type="text" name="name"
                                       placeholder="Name"
                                       class="form-control" :class="{ 'is-invalid': form.errors.has('name') }">
                                <has-error :form="form" field="name"></has-error>
                            </div>
                            <div class="form-group">
                            <select name="isActive" v-model="form.isActive" id="isActive" class="form-control" :class="{ 'is-invalid': form.errors.has('isActive') }">
                                <option value="">Select Activation Type</option>
                                <option value="Active">Active</option>
                                <option value="DeActive">DeActive</option>
                            </select>
                            <has-error :form="form" field="isActive"></has-error>
                        </div>
                        </div>
                        <div class="modal-footer">
                            <button v-show="editMode" type="submit" class="btn btn-success">Update</button>
                            <button v-show="!editMode" type="submit" class="btn btn-primary">Create</button>
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        </div>

                    </form>

                </div>
            </div>
        </div>
        <!--End modal-->
    </div>
</template>

<script>
    export default {
        data() {
            return {
                editMode: false,
                categories: {},
                form: new Form({
                    id:'',
                    name : '',
                    slug: '',
                    isActive: '',
                })
            }
        },
        methods: {
            newModal(){
                this.editMode = false;
                this.form.reset();
                $('#addNew').modal('show');
            },
            editModal(category){
                this.editMode = true;
                this.form.reset();
                $('#addNew').modal('show');
                this.form.fill(category);
            },
            getResults(page = 1) {
                axios.get('api/category?page=' + page)
                    .then(response => {
                        this.categories = response.data;
                    });
            },
            updateCategory(){
                this.$Progress.start();
                this.form.put('api/category/'+this.form.id)
                    .then(() => {
                        $('#addNew').modal('hide');
                        swal(
                            'Updated!',
                            'Your information has been updated.',
                            'success'
                        )
                        this.$Progress.finish();
                        Fire.$emit('takePageLoad');
                    })
                    .catch(() => {
                        this.$Progress.fail();
                });
            },
            loadCategories(){
                if(this.$gate.isAdminOrAuthor()){
                    axios.get("api/category").then(({ data }) => (this.categories = data));
                }
            },
            createCategory(){
                this.$Progress.start();
                this.form.post('api/category')
                .then(()=>{
                    Fire.$emit('takePageLoad');
                    $('#addNew').modal('hide');
                    toast({
                        type: 'success',
                        title: 'Category created successfully'
                    })
                    this.$Progress.finish();
                }).catch(()=>{
                    this.$Progress.fail();
                })
            },
            deleteCategory(id){
                this.$Progress.start();
                swal({
                    title: 'Are you sure?',
                    text: "You won't be able to revert this!",
                    type: 'warning',
                    showCancelButton: true,
                    confirmButtonColor: '#3085d6',
                    cancelButtonColor: '#d33',
                    confirmButtonText: 'Yes, delete it!'
                }).then((result) => {
                    if(result.value){
                        this.form.delete('api/category/'+id).then(()=>{
                            swal(
                                'Deleted!',
                                'Your file has been deleted.',
                                'success'
                            )
                            Fire.$emit('takePageLoad');
                        }).catch(()=>{
                            this.$Progress.fail();
                            swal("Failed","There was something wrong.","warning");
                        })
                    }else{
                        swal("Your imaginary information is safe!");
                    }
                    this.$Progress.finish();

                })

            }
        },
        created() {
            Fire.$on('searching',() => {
                let query = this.$parent.search;
                axios.get('api/findCategory?q=' + query)
                    .then((data) => {
                        this.categories = data.data
                    })
                    .catch(() => {

                    })
            })
            this.loadCategories();
            Fire.$on('takePageLoad',() => {
                this.loadCategories();
            });
            //    setInterval(() => this.loadUsers(), 3000);
        }
    }
</script>
