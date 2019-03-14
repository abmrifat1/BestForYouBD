<template>
    <div class="container">
        <div class="row mt-5 justify-content-center" v-if="$gate.isAdminOrAuthor()">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">institutes Table</h3>

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
                                <th>ID</th>
                                <th>institute Name</th>
                                <th>type</th>
                                <th>Status</th>
                                <th>Registered At</th>
                                <th>Modify</th>
                            </tr>

                            <tr v-for="institute in institutes.data" :key="institute.id">

                                <td>{{institute.id}}</td>
                                <td>{{institute.name}}</td>
                                <td>{{institute.type}}</td>
                                <td>{{institute.isActive}}</td>
                                <td>{{institute.created_at | myDate}}</td>

                                <td>
                                    <route-link to="/institute-departments">
                                        <i class="fa fa-plus blue" data-toggle="tooltip" data-placement="top" title="Add Department Variation"></i>
                                    </route-link>
                                    <a href="#" @click="editModal(institute)">
                                        <i class="fa fa-edit blue"></i>
                                    </a>
                                    <a href="#" @click="deleted(institute.id)">
                                        <i class="fa fa-trash red"></i>
                                    </a>

                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- /.card-body -->
                    <div class="card-footer">
                        <pagination :data="institutes" @pagination-change-page="getResults"></pagination>
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
                        <h5 class="modal-title" v-show="editMode" id="addNewLabel">Update institutes's Info</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form @submit.prevent="editMode ? update() : create()">
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="name">Institution Name</label>
                                <input v-model="form.name" type="text" id="name" name="name"
                                       placeholder="Name"
                                       class="form-control" :class="{ 'is-invalid': form.errors.has('name') }">
                                <has-error :form="form" field="name"></has-error>
                            </div>
                            <div class="form-group">
                                <label for="date">Establish Date</label>
                                <input v-model="form.estDate" type="date" name="estDate"
                                       placeholder="estDate"
                                       class="form-control" :class="{ 'is-invalid': form.errors.has('estDate') }">
                                <has-error :form="form" field="estDate"></has-error>
                            </div>
                            <div class="form-group">
                                <label for="address">Institution Address</label>
                                <textarea v-model="form.address" name="address" id="address"
                                  placeholder="Address"
                                  class="form-control" :class="{ 'is-invalid': form.errors.has('address') }"></textarea>
                                <has-error :form="form" field="address"></has-error>
                            </div>
                            <div class="form-group">
                                <label>Select the Institution Type</label>
                                <select v-model="form.type" class="form-control" :class="{ 'is-invalid': form.errors.has('type') }">
                                    <option value="" disabled>Institute Type</option>
                                    <option value="School">School</option>
                                    <option value="College">College</option>
                                    <option value="University">University</option>
                                </select>
                                <has-error :form="form" field="type"></has-error>
                            </div>
                            
                            <div class="form-group">
                                <label>Publication Status</label>
                                <select v-model="form.isActive" id="isActive" class="form-control">
                                    <option value="" disabled>Select Status</option>
                                    <option value="Active">Publish</option>
                                    <option value="Pending">Draft</option>
                                </select>
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
                institutes: {},
                departments:{},
                institute_departments:{},
                form: new Form({
                    university_id:'',
                    department_id:'',
                    cost:'',
                    students:'',
                    faculty_members:'',
                    IEEB:'',
                    credit:'',
                    computer:'',
                })
            }
        },
        methods: {
            newModal(){
                this.editMode = false;
                this.form.reset();
                //axios.get("api/education/create").then( response => (this.departments = response));
                axios.get("api/departments").then(({ data }) => (this.departments = data));
                $('#addNew').modal('show');
            },
            editModal(institute){
                this.editMode = true;
                this.form.reset();
                /*axios.get("api/departments").then(({ data }) => (this.departments = data));
                $('#addNew').modal('show');
                this.form.fill(institute);
                axios.get("api/education-departments/"+institute.id).then( 
                    data => {this.institute_departments = data;
                })*/
                $('#addNew').modal('show');
                this.form.fill(institute);
            },
            getResults(page = 1) {
                axios.get('api/education?page=' + page)
                    .then(response => {
                        this.institutes = response.data;
                    });
            },
            update(){
                this.$Progress.start();
                this.form.put('api/education/'+this.form.id)
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
            load(){
                this.$Progress.start();
                if(this.$gate.isAdminOrAuthor()){
                    axios.get("api/education-departments").then(({ data }) => (this.institutes = data));
                }
                this.$Progress.finish();
            },
            create(){
                this.$Progress.start();
                this.form.post('api/education')
                .then(()=>{
                    Fire.$emit('takePageLoad');
                    $('#addNew').modal('hide');
                    toast({
                        type: 'success',
                        title: 'institute created successfully'
                    })
                    this.$Progress.finish();
                }).catch(()=>{
                    this.$Progress.fail();
                })
            },
            deleted(id){
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
                        this.form.delete('api/education/'+id).then(()=>{
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

            },
        },
        created() {
            Fire.$on('searching',() => {
                let query = this.$parent.search;
                axios.get('api/findeducation?q=' + query)
                    .then((data) => {
                        this.institutes = data.data
                    })
                    .catch(() => {

                    })
            })
            this.load();
            Fire.$on('takePageLoad',() => {
                this.load();
            });
            //    setInterval(() => this.loadinstitutes(), 3000);
        }
    }
</script>