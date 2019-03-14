<template>
    <div class="container">
        <div class="row mt-5 justify-content-center" v-if="$gate.isAdminOrAuthor()">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Hospitals Table</h3>

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
                                <th>Hospital Name</th>
                                <th>Status</th>
                                <th>Modify</th>
                            </tr>

                            <tr v-for="(hospital,index) in hospitals.data" :key="hospital.id">

                                <td>{{index+1}}</td>
                                <td>{{hospital.name}}</td>
                                <td>{{hospital.isActive}}</td>

                                <td>
                                    <a href="javascript:void(0)" @click="settingInstituteDepartments(hospital)">
                                        <i class="fas fa-cog blue" data-toggle="tooltip" data-placement="top" title="Add Department Variation"></i>
                                    </a>
                                    <a href="javascript:void(0)" @click="editModal(hospital)">
                                        <i class="fa fa-edit blue"></i>
                                    </a>
                                    <a href="javascript:void(0)" @click="deleted(hospital.id)">
                                        <i class="fa fa-trash red"></i>
                                    </a>

                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- /.card-body -->
                    <div class="card-footer">
                        <pagination :data="hospitals" @pagination-change-page="getResults"></pagination>
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
                        <h5 class="modal-title" v-show="editMode" id="addNewLabel">Update Hospitals Info</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form @submit.prevent="editMode ? update() : create()">
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="name">Hospital Name</label>
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
                                <label for="address">Hospital Address</label>
                                <textarea v-model="form.address" name="address" id="address"
                                  placeholder="Address"
                                  class="form-control" :class="{ 'is-invalid': form.errors.has('address') }"></textarea>
                                <has-error :form="form" field="address"></has-error>
                            </div>


                            <div class="form-group">
                                <label>Select a City</label>
                                <select name="city" class="form-control" v-model="form.city" style="width:100%;">
                                    <option value="" disabled>Select a City</option>
                                    <option value="Dhaka">Dhaka</option>
                                    <option value="Chittagong">Chittagong</option>
                                    <option value="Sylhet">Sylhet</option>
                                    <option value="Rajshahi">Rajshahi</option>
                                    <option value="Khulna">Khulna</option>
                                    <option value="Comilla">Comilla</option>
                                    <option value="Rangpur">Rangpur</option>
                                    <option value="Barishal">Barishal</option>
                                    <option value="Mymansing">Mymansing</option>
                                </select>
                                <has-error :form="form" field="city"></has-error>
                            </div>
                            
                            <div class="widget-user-image" v-if="McreateMode">
                                <label for="main_img"><img class="mt-1" src="img/hospitals/default.jpg" style="width:80%;height:25%;" alt="Main Image"></label>
                            </div>
                            <div class="widget-user-image" v-else>
                                <label for="main_img"><img class="mt-1" :src="getMainPhoto()" style="width:80%;height:25%;" alt="Main Image"></label>
                            </div>
                            <div class="form-group">
                                <label for="main_img">Main Image</label>
                                <div class="input-group">
                                    <div class="custom-file">
                                        <input type="file" name="main_img" @change="Main_Image" class="custom-file-input" id="main_img" accept="image/*" :class="{ 'is-invalid': form.errors.has('main_img') }">
                                        <label class="custom-file-label" for="main_img">Choose file</label>
                                    </div>
                                </div>
                                <has-error :form="form" field="main_img"></has-error>
                            </div>
                            <div class="widget-user-image" v-if="Mg1createMode">
                                <label for="gallery_img_1"><img class="mt-1" src="img/hospitals/default.jpg" style="width:80%;height:25%;" alt="Gallery Image:1"></label>
                            </div>
                            <div class="widget-user-image" v-else>
                                <label for="gallery_img_1"><img class="mt-1" :src="getGalleryPhoto1()" style="width:80%;height:25%;" for="gallery_img_1" alt="Gallery Image:1"></label>
                            </div>
                            <div class="form-group">
                                <label for="gallery_img_1">Gallery Image:1</label>
                                <div class="input-group">
                                    <div class="custom-file">
                                        <input type="file" name="gallery_img_1" @change="Gallery_image_1" class="custom-file-input" id="gallery_img_1" accept="image/*" :class="{ 'is-invalid': form.errors.has('gallery_img_1') }">
                                        <label class="custom-file-label" for="main_img">Choose file</label>
                                    </div>
                                </div>
                                <has-error :form="form" field="gallery_img_1"></has-error>
                            </div>
                            <div class="widget-user-image" v-if="Mg2createMode">
                                <label for="gallery_img_2"><img class="mt-1" src="img/hospitals/default.jpg" style="width:80%;height:25%;" alt="Gallery Image:2"></label>
                            </div>
                            <div class="widget-user-image" v-else>
                                <label for="gallery_img_2"><img class="mt-1" :src="getGalleryPhoto2()" style="width:80%;height:25%;" alt="Gallery Image:2"></label>
                            </div>
                            <div class="form-group">
                                <label for="gallery_img_2">Gallery Image:2</label>
                                <div class="input-group">
                                    <div class="custom-file">
                                        <input type="file" name="gallery_img_2" @change="Gallery_image_2" class="custom-file-input" id="gallery_img_2" accept="image/*" :class="{ 'is-invalid': form.errors.has('gallery_img_2') }">
                                        <label class="custom-file-label" for="main_img">Choose file</label>
                                    </div>
                                </div>
                                <has-error :form="form" field="gallery_img_2"></has-error>
                            </div>
                            <div class="form-group">
                                <label>Select the Ownership Type</label>
                                <select v-model="form.ownership_type" class="form-control" :class="{ 'is-invalid': form.errors.has('ownership_type') }">
                                    <option value="" disabled>Ownership Type</option>
                                    <option value="Public">Public</option>
                                    <option value="Private">Private</option>
                                </select>
                                <has-error :form="form" field="ownership_type"></has-error>
                            </div>
                            <div class="form-group" v-show="!editMode">
                                <label>Select departments</label><br/>
                                <ul class="list-group">
                                    <li v-for="department in departments" class="list-group-item" :key="department.id">
                                        <input type="checkbox" v-model="form.department" :value="department.id"> {{department.name}}
                                    </li>
                                </ul>
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
        
    
        <!-- Modal -->
        <div class="modal fade bd-example-modal-lg" id="hospitalDepartments" tabindex="-1" role="dialog" aria-labelledby="instituteDepartmentsLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="instituteDepartmentsLabel">Hospital Department Information</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="card-body table-responsive p-0">
                            <table class="table table-hover">
                                <tbody>
                                <tr>
                                    <th>Department Name</th>
                                    <th>Doctors</th>
                                    <th>Foreign Degree Doctors</th>
                                    <th>Modify</th>
                                </tr>

                                <tr v-for="department in hospital_departments.data" :key="department.hospital_id">
                                    <td>{{department.name}}</td>
                                    <td>{{department.doctors}}</td>
                                    <td>{{department.foreign_degree_doctors}}</td>

                                    <td>
                                        <a href="javascript:void(0)" @click="editDepartment(department)">
                                            <i class="fa fa-edit blue"></i>
                                        </a>
                                        <a href="javascript:void(0)" @click="departmentDeleted(department)">
                                            <i class="fa fa-trash red"></i>
                                        </a>

                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" @click="departmentNewModal()">Add Department <i
                                class="fas fa-plus fa-fw"></i></button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Department -->
        <!-- Modal -->
        <div class="modal fade" id="departmentFormModal" tabindex="-1" role="dialog" aria-labelledby="instituteDepartmentsLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="instituteDepartmentsLabel">Hospital Deparment Information</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form  @submit.prevent="departmentEditMode ? DepartmentUpdate() : addHospitalDepartment()">
                        <div class="modal-body">
                            <div class="form-group" v-show="!departmentEditMode">
                                <label for="degree" class="col-form-label">Department:</label>
                                <select v-model="departmentForm.hospital_department_id" class="form-control">
                                    <option v-for="department in departments" :key="department.id" :value="department.id">{{department.name}}</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="credit" class="col-form-label">Total Doctors:</label>
                                <input type="number" v-model="departmentForm.doctors" class="form-control" id="credit">
                            </div>
                            <div class="form-group">
                                <label for="faculty_members" class="col-form-label">Total PHD or foreign degree doctors:</label>
                                <input type="number" v-model="departmentForm.foreign_degree_doctors" class="form-control" id="faculty_members">
                            </div>
                            <div class="form-group">
                                <label for="students" class="col-form-label">Staff:</label>
                                <input type="number" v-model="departmentForm.staff" class="form-control" id="students">
                            </div>
                            <!--<div class="form-group"><input type="hidden" v-model="departmentForm.department_id" class="form-control"></div>
                            <div class="form-group"><input type="hidden" v-model="departmentForm.institute_id" class="form-control"></div>-->
                        </div>
                        <div class="modal-footer">
                            <button v-show="departmentEditMode" type="submit" class="btn btn-success">Update</button>
                            <button v-show="!departmentEditMode" type="submit" class="btn btn-success">Create</button>
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- End form modal -->
    </div>
</template>

<script>
    export default {
        data() {
            return {
                editMode: false,
                departmentEditMode: false,
                McreateMode:false,
                Mg1createMode:false,
                Mg2createMode:false,
                hospitals: {},
                departments:{},
                hospital_id:'',
                hospital_departments:{},
                form: new Form({
                    id:'',
                    name : '',
                    estDate: '',
                    main_img: '',
                    gallery_img_1: '',
                    gallery_img_2: '',
                    ownership_type: '',
                    chancellor: '',
                    address: '',
                    city: '',
                    isActive: '',
                    department: []
                }),
                departmentForm: new Form({
                    hospital_id:'',
                    hospital_department_id:'',
                    doctors:'',
                    foreign_degree_doctors:'',
                    staff:'',
                })
            }
        },
        methods: {
            getMainPhoto(){
                let main_img_pic = (this.form.main_img.length > 200) ? this.form.main_img : "img/hospitals/"+ this.form.main_img ;
                return main_img_pic;
                    
            },
            getGalleryPhoto1(){
                let gallery_img_1_pic = (this.form.gallery_img_1.length > 200) ? this.form.gallery_img_1 : "img/hospitals/"+ this.form.gallery_img_1 ;
                return gallery_img_1_pic;
                
            },
            getGalleryPhoto2(){
                let gallery_img_2_pic = (this.form.gallery_img_2.length > 200) ? this.form.gallery_img_2 : "img/hospitals/"+ this.form.gallery_img_2 ;
                return gallery_img_2_pic;
            },
            
            newModal(){
                this.editMode = false;
                this.McreateMode = true;
                this.Mg1createMode = true;
                this.Mg2createMode = true;
                this.form.reset();
                //axios.get("api/education/create").then( response => (this.departments = response));
                
                $('#addNew').modal('show');
            },
            editModal(hospital){
                this.McreateMode = false;
                this.Mg1createMode = false;
                this.Mg2createMode = false;
                this.editMode = true;
                this.form.reset();
                $('#addNew').modal('show');
                this.form.fill(hospital);
            },
            settingInstituteDepartments(hospital){
                axios.get("api/hospital-departments/"+hospital.id).then( 
                    data => {this.hospital_departments = data;
                });
                this.hospital_id = hospital.id;
                $('#hospitalDepartments').modal('show');
            },
            departmentNewModal()
            {
                this.departmentEditMode = false;
                this.departmentForm.reset();
                $('#departmentFormModal').modal('show');
            },
            addHospitalDepartment(){
                this.$Progress.start();
                this.departmentForm.post('api/hospital-departments/'+this.hospital_id)
                .then(()=>{
                    $('#departmentFormModal').modal('hide');
                    $('#hospitalDepartments').modal('hide');
                    Fire.$emit('takePageLoad');
                    swal(
                            'Inserted!',
                            'Your hospital department information has been stored.',
                            'success'
                        )
                    this.$Progress.finish();
                }).catch(()=>{
                    swal("Failed","Hospital Department Already Stored","warning");
                    this.$Progress.fail();
                })
            },
            editDepartment(department){
                this.departmentEditMode = true;
                this.departmentForm.reset();
                $('#departmentFormModal').modal('show');
                this.departmentForm.fill(department);
            },
            DepartmentUpdate(){
                this.$Progress.start();
                this.departmentForm.put('api/hospital-departments/')
                    .then(() => {
                        swal(
                            'Updated!',
                            'Your information has been updated.',
                            'success'
                        )
                        $('#departmentFormModal').modal('hide');
                        $('#hospitalDepartments').modal('hide');
                        this.$Progress.finish();
                        Fire.$emit('takePageLoad');
                    })
                    .catch(() => {
                        swal("Failed","There was something wrong.","warning");
                        this.$Progress.fail();
                });
            },
            departmentDeleted(department){
                this.$Progress.start();
                this.departmentForm.reset();
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

                        this.departmentForm.fill(department);
                        this.departmentForm.delete('api/delete_hospital_department').then(()=>{
                            swal(
                                'Deleted!',
                                'Hospital Deparment has been deleted.',
                                'success'
                            )
                            $('#hospitalDepartments').modal('hide');
                            Fire.$emit('takePageLoad');
                        }).catch(()=>{
                            this.$Progress.fail();
                            swal("Failed","There was something wrong.","warning");
                        })
                    }
                    this.$Progress.finish();

                })

            },
            update(){
                this.$Progress.start();
                this.form.put('api/dashboard/hospital/'+this.form.id)
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
            Main_Image(e){
                // console.log('uploading');
                this.McreateMode = false;
                let file = e.target.files[0];
                //console.log(file);
                let reader = new FileReader();
           
                    reader.onloadend = (file) => {
                        // console.log('RESULT', reader.result)
                        this.form.main_img = reader.result;
                    }
                    reader.readAsDataURL(file);
            },
            Gallery_image_1(e){
                // console.log('uploading');
                this.Mg1createMode = false;
                let file = e.target.files[0];
                //console.log(file);
                let reader = new FileReader();
                
                    reader.onloadend = (file) => {
                        // console.log('RESULT', reader.result)
                        this.form.gallery_img_1 = reader.result;
                    }
                    reader.readAsDataURL(file);
            },
            Gallery_image_2(e){
                // console.log('uploading');
                this.Mg2createMode = false;
                let file = e.target.files[0];
                //console.log(file);
                let reader = new FileReader();
                
                    reader.onloadend = (file) => {
                        // console.log('RESULT', reader.result)
                        this.form.gallery_img_2 = reader.result;
                    }
                    reader.readAsDataURL(file);
            },
            load(){
                this.$Progress.start();
                if(this.$gate.isAdminOrAuthor()){
                    axios.get("api/dashboard/hospital").then(({ data }) => (this.hospitals = data));
                }
                axios.get("api/hospital/departments").then(({ data }) => (this.departments = data));
                this.$Progress.finish();
            },
            getResults(page = 1) {
                axios.get('api/dashboard/hospital?page=' + page)
                    .then(response => {
                        this.hospitals = response.data;
                    });
            },
            create(){
                this.$Progress.start();
                this.form.post('api/dashboard/hospital')
                .then(()=>{
                    Fire.$emit('takePageLoad');
                    $('#addNew').modal('hide');
                    toast({
                        type: 'success',
                        title: 'Hospital created successfully'
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
                        this.form.delete('api/dashboard/hospital/'+id).then(()=>{
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
            getMainPhoto(){
                let photo = (this.form.main_img.length > 200) ? this.form.main_img : "img/hospitals/"+ this.form.main_img ;
                return photo;
            }
        },
        created() {
            Fire.$on('searching',() => {
                let query = this.$parent.search;
                axios.get('api/findhospital?q=' + query)
                    .then((data) => {
                        this.hospitals = data.data
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