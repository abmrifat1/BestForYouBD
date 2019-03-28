<template>
    <div class="container">
        <div class="row mt-5 justify-content-center" v-if="$gate.isAdminOrAuthorOrEditor()">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Room Table</h3>

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

                            <tr v-for="room in rooms.data" :key="room.id">
                                <td>{{room.name}}</td>
                                <td>{{room.slug}}</td>
                                <td>{{room.isActive | upText}}</td>
                                <td>
                                    <a href="javascript:void(0)" @click="editModal(room)">
                                        <i class="fa fa-edit blue"></i>
                                    </a>

                                    <a href="javascript:void(0)" @click="deleted(room.id)" v-if="$gate.isAdminOrAuthor()">
                                        <i class="fa fa-trash red"></i>
                                    </a>

                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- /.card-body -->
                    <div class="card-footer">
                        <pagination :data="rooms" @pagination-change-page="getResults"></pagination>
                    </div>
                </div>
                <!-- /.card -->
            </div>
        </div>
        <div v-if="!$gate.isAdminOrAuthorOrEditor()">
            <not-found></not-found>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="addNew" tabindex="-1" role="dialog" aria-labelledby="addNewLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" v-show="!editMode" id="addNewLabel">Add New</h5>
                        <h5 class="modal-title" v-show="editMode" id="addNewLabel">Update Room Info</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form @submit.prevent="editMode ? update() : create()">
                        <div class="modal-body">
                            <div class="form-group">
                                <input v-model="form.name" type="text" name="name"
                                       placeholder="Name"
                                       class="form-control" :class="{ 'is-invalid': form.errors.has('name') }">
                                <has-error :form="form" field="name"></has-error>
                            </div>
                            <div class="form-group">
                            <select name="isActive" v-model="form.isActive" id="isActive" class="form-control" :class="{ 'is-invalid': form.errors.has('isActive') }">
                                <option value="" disabled>Select Activation Type</option>
                                <option value="Active">Active</option>
                                <option value="Draft">Draft</option>
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
                rooms: {},
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
            editModal(room){
                this.editMode = true;
                this.form.reset();
                $('#addNew').modal('show');
                this.form.fill(room);
            },
            getResults(page = 1) {
                axios.get('api/dashboard-room?page=' + page)
                    .then(response => {
                        this.rooms = response.data;
                    });
            },
            update(){
                this.$Progress.start();
                this.form.put('api/dashboard-room/'+this.form.id)
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
                if(this.$gate.isAdminOrAuthorOrEditor()){
                    axios.get("api/dashboard-room").then(({ data }) => (this.rooms = data));
                }
                this.$Progress.finish();
            },
            create(){
                this.$Progress.start();
                this.form.post('api/dashboard-room')
                .then(()=>{
                    Fire.$emit('takePageLoad');
                    $('#addNew').modal('hide');
                    toast({
                        type: 'success',
                        title: 'Room created successfully'
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
                        this.form.delete('api/dashboard-room/'+id).then(()=>{
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
                axios.get('api/finddepartment?q=' + query)
                    .then((data) => {
                        this.rooms = data.data
                    })
                    .catch(() => {

                    })
            })
            this.load();
            Fire.$on('takePageLoad',() => {
                this.load();
            });
            //    setInterval(() => this.loadUsers(), 3000);
        }
    }
</script>
