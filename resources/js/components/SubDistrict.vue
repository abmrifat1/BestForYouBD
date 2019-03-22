<template>
    <div class="container">
        <div class="row mt-5 justify-content-center" v-if="$gate.isAdminOrAuthor()">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Sub District Table</h3>

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
                                <th>Serial Number</th>
                                <th>Sub District</th>
                                <th>District</th>
                                <th>Modify</th>
                            </tr>

                            <tr v-for="(subDistrict,index) in subDistricts.data" :key="subDistrict.id">
                                <td>{{index+1}}</td>
                                <td>{{subDistrict.name}}</td>
                                <td>{{subDistrict.districtName}}</td>
                                <td>
                                    <a href="javascript:void(0)" @click="editModal(subDistrict)">
                                        <i class="fa fa-edit blue"></i>
                                    </a>

                                    <a href="javascript:void(0)" @click="deleted(subDistrict.id)">
                                        <i class="fa fa-trash red"></i>
                                    </a>

                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- /.card-body -->
                    <div class="card-footer">
                        <pagination :data="subDistricts" @pagination-change-page="getResults"></pagination>
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
                        <h5 class="modal-title" v-show="editMode" id="addNewLabel">Update subDistrict Info</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form @submit.prevent="editMode ? update() : create()">
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="name" class="col-form-label">Sub District Name:</label>
                                <input v-model="form.name" type="text" name="name" class="form-control" placeholder="Name" :class="{ 'is-invalid': form.errors.has('name') }">
                                <has-error :form="form" field="name"></has-error>
                            </div>
                            <div class="form-group">
                                <label for="district_id" class="col-form-label">District:</label>
                                <select v-model="form.district_id" class="form-control" :class="{ 'is-invalid': form.errors.has('district_id') }">
                                    <option value="">Select One</option>
                                    <option v-for="district in districts" :key="district.id" :value="district.id">{{district.name}}</option>
                                </select>
                                <has-error :form="form" field="district_id"></has-error>
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
                subDistricts: {},
                districts: {},
                form: new Form({
                    id:'',
                    name : '',
                    district_id : ''
                })
            }
        },
        methods: {
            newModal(){
                this.editMode = false;
                this.form.reset();
                $('#addNew').modal('show');
            },
            editModal(city){
                this.editMode = true;
                this.form.reset();
                $('#addNew').modal('show');
                this.form.fill(city);
            },
            getResults(page = 1) {
                axios.get('api/admin-subdistrict?page=' + page)
                    .then(response => {
                        this.subDistricts = response.data;
                    });
            },
            update(){
                this.$Progress.start();
                this.form.put('api/admin-subdistrict/'+this.form.id)
                    .then(() => {
                        $('#addNew').modal('hide');
                        swal(
                            'Updated!',
                            'Information has been updated.',
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
                    axios.get("api/admin-subdistrict").then(({ data }) => (this.subDistricts = data));
                    axios.get("api/admin-getdistrict").then(({ data }) => (this.districts = data));
                }
                this.$Progress.finish();
            },
            create(){
                this.$Progress.start();
                this.form.post('api/admin-subdistrict')
                .then(()=>{
                    Fire.$emit('takePageLoad');
                    $('#addNew').modal('hide');
                    toast({
                        type: 'success',
                        title: 'Sub district created successfully'
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
                        this.form.delete('api/admin-subdistrict/'+id).then(()=>{
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
            this.load();
            Fire.$on('takePageLoad',() => {
                this.load();
            });
        }
    }
</script>
