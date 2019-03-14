<template>
    <div class="container">
        <div class="row mt-5 justify-content-center" v-if="$gate.isAdminOrAuthor()">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Forum Query Posts Table</h3>

                        <div class="card-tools">
                            
                        </div>
                    
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body table-responsive p-0">
                        <table class="table table-hover">
                            <tbody>
                            <tr>
                                <th>S.N</th>
                                <th>Name</th>
                                <th>Title</th>
                                <th>Description</th>
                                <th>Status</th>
                                <th>Modify</th>
                            </tr>

                            <tr v-for="(discuss,index) in discuss.data" :key="discuss.id">

                                <td>{{index+1}}</td>
                                <td>{{discuss.name}}</td>
                                <td>{{discuss.title}}</td>
                                <td>{{discuss.description}}</td>
                                <td>{{discuss.isActive | upText}}</td>
                                <td>
                                    <a href="javascript:void(0)" @click="editModal(discuss)">
                                        <i class="fa fa-edit blue"></i>
                                    </a>

                                    <a href="javascript:void(0)" @click="deletediscuss(discuss.id)">
                                        <i class="fa fa-trash red"></i>
                                    </a>
                                    <a href="javascript:void(0)" @click="deletediscuss(discuss.id)" title="Send Email to Questioner">
                                        <i class="fa fa-arrow-right green"></i>
                                    </a>

                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- /.card-body -->
                    <div class="card-footer">
                        <pagination :data="discuss" @pagination-change-page="getResults"></pagination>
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
                        <h5 class="modal-title" v-show="editMode" id="addNewLabel">Update Query Status</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form @submit.prevent="editMode ? updatediscuss() : creatediscuss()">
                        <div class="modal-body">
                            <div class="form-group">
                                <select name="isActive" v-model="form.isActive" id="isActive" class="form-control" :class="{ 'is-invalid': form.errors.has('isActive') }">
                                    <option value="" disabled>Select Activation Type</option>
                                    <option value="Active">Active</option>
                                    <option value="Pending">Pending</option>
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
                discuss: {},
                form: new Form({
                    id:'',
                    name : '',
                    title: '',
                    email: '',
                    description: '',
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
            editModal(discuss){
                this.editMode = true;
                this.form.reset();
                $('#addNew').modal('show');
                this.form.fill(discuss);
            },
            getResults(page = 1) {
                axios.get('api/discuss?page=' + page)
                    .then(response => {
                        this.discuss = response.data;
                    });
            },
            updatediscuss(){
                this.$Progress.start();
                this.form.put('api/discuss/'+this.form.id)
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
            loaddiscuss(){
                this.$Progress.start();
                if(this.$gate.isAdminOrAuthor()){
                    axios.get("api/discuss").then(({ data }) => (this.discuss = data));
                }
                this.$Progress.finish();
            },
            creatediscuss(){
                this.$Progress.start();
                this.form.post('api/discuss')
                .then(()=>{
                    Fire.$emit('takePageLoad');
                    $('#addNew').modal('hide');
                    toast({
                        type: 'success',
                        title: 'discuss Post created successfully'
                    })
                    this.$Progress.finish();
                }).catch(()=>{
                    this.$Progress.fail();
                })
            },
            deletediscuss(id){
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
                        this.form.delete('api/discuss/'+id).then(()=>{
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
                    }
                    this.$Progress.finish();

                })

            }
        },
        created() {
            Fire.$on('searching',() => {
                let query = this.$parent.search;
                axios.get('api/findDiscuss?q=' + query)
                    .then((data) => {
                        this.discuss = data.data
                    })
                    .catch(() => {

                    })
            })
            this.loaddiscuss();
            Fire.$on('takePageLoad',() => {
                this.loaddiscuss();
            });
            //    setInterval(() => this.loadUsers(), 3000);
        }
    }
    
</script>
