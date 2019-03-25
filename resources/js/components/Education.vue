<template>
    <div class="container">
        <div class="row mt-5 justify-content-center" v-if="$gate.isAdminOrAuthor()">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Institutes Table</h3>

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
                                <th>S.N</th>
                                <th>Institute Name</th>
                                <th>Status</th>
                                <th>Modify</th>
                            </tr>
                            <tr v-for="(institute,index) in institutes.data" :key="institute.id">

                                <td>{{index+1}}</td>
                                <td>{{institute.name}}</td>
                                <td>{{institute.isActive}}</td>

                                <td>
                                    <a href="javascript:void(0)" @click="settingInstituteDepartments(institute)">
                                        <i class="fas fa-cog blue" data-toggle="tooltip" data-placement="top" title="Add Department Variation"></i>
                                    </a>
                                    <a href="javascript:void(0)" @click="editModal(institute)">
                                        <i class="fa fa-edit blue"></i>
                                    </a>
                                    <a href="javascript:void(0)" @click="deleted(institute.id)">
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
                                       class="form-control" :class="{ 'is-invalid': form.errors.has('name') }" required>
                                <has-error :form="form" field="name"></has-error>
                            </div>
                            <div class="form-group">
                                <label for="institute_type_id" class="col-form-label">Institute Type:</label>
                                <select v-model="form.institute_type_id" class="form-control" @change="getDepartments" :class="{ 'is-invalid': form.errors.has('institute_type_id') }" required>
                                    <option value="">Select One</option>
                                    <option v-for="instituteType in instituteTypes" :key="instituteType.id" :value="instituteType.id">{{instituteType.name}}</option>
                                </select>
                                <has-error :form="form" field="institute_type_id"></has-error>
                            </div>
                            <div class="form-group" v-show="visible">
                                <label>Select Departments</label>
                                <select class="form-control" v-model="form.department" :multiple="true" style="width:100%;" :class="{ 'is-invalid': form.errors.has('department') }">
                            
                                    <option v-for="department in departments" :value="department.id" :key="department.id">{{department.name}}</option>
                                </select>
                                <has-error :form="form" field="department"></has-error>
                            </div>
                            <div class="form-group">
                                <label for="date">Establish Date</label>
                                <input v-model="form.estDate" type="date" name="estDate"
                                       placeholder="estDate"
                                       class="form-control" :class="{ 'is-invalid': form.errors.has('estDate') }" required>
                                <has-error :form="form" field="estDate"></has-error>
                            </div>

                            <div class="form-group">
                                <label for="address">Address</label>
                                <textarea v-model="form.address" name="address" id="address"
                                  placeholder="Address"
                                  class="form-control" :class="{ 'is-invalid': form.errors.has('address') }" required></textarea>
                                <has-error :form="form" field="address"></has-error>
                            </div>
                            <div class="form-group">
                                <label>District</label>
                                <select class="form-control" v-model="form.district_id" style="width:100%;" @change="getSubDistricts" :class="{ 'is-invalid': form.errors.has('district') }">
                                    <option value="" disabled>Select a district</option>
                                    <option v-for="district in districts" :value="district.id" :key="district.id">{{district.name}}</option>
                                </select>
                                <has-error :form="form" field="district"></has-error>
                            </div>
                            <div class="form-group">
                                <label>Sub District</label>
                                <select class="form-control" v-model="form.sub_district_id" style="width:100%;" :class="{ 'is-invalid': form.errors.has('sub_district_id') }">
                                    <option value="" disabled>Select a sub district</option>
                                    <option v-for="subDistrict in subDistricts" :value="subDistrict.id" :key="subDistrict.id">{{subDistrict.name}}</option>
                                </select>
                                <has-error :form="form" field="sub_district_id"></has-error>
                            </div>
                            
                            <div class="widget-user-image" v-if="McreateMode">
                                <label for="main_img"><img class="mt-1" src="img/institutes/default.jpg" style="width:80%;height:25%;" alt="Main Image"></label>
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
                                <label for="gallery_img_1"><img class="mt-1" src="img/institutes/default.jpg" style="width:80%;height:25%;" alt="Gallery Image:1"></label>
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
                                <label for="gallery_img_2"><img class="mt-1" src="img/institutes/default.jpg" style="width:80%;height:25%;" alt="Gallery Image:2"></label>
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
                                <select v-model="form.ownership_type" class="form-control" :class="{ 'is-invalid': form.errors.has('ownership_type') }" required>
                                    <option value="" disabled>Ownership Type</option>
                                    <option value="Public">Public</option>
                                    <option value="Private">Private</option>
                                </select>
                                <has-error :form="form" field="ownership_type"></has-error>
                            </div>
                            <div class="form-group">
                                <label for="address">Institution Description</label>
                                <textarea v-model="form.description"  id="description"
                                  placeholder="Description"
                                  class="form-control" :class="{ 'is-invalid': form.errors.has('description') }"></textarea>
                                <has-error :form="form" field="description"></has-error>
                            </div>
                            <div class="form-group">
                                <label for="phone">Institution phone</label>
                                <input v-model="form.phone" type="text" id="phone"
                                       placeholder="phone"
                                       class="form-control" :class="{ 'is-invalid': form.errors.has('phone') }" required>
                                <has-error :form="form" field="phone"></has-error>
                            </div>
                            <div class="form-group">
                                <label for="email">Institution email</label>
                                <input v-model="form.email" type="email" id="email"
                                       placeholder="email"
                                       class="form-control" :class="{ 'is-invalid': form.errors.has('email') }" required>
                                <has-error :form="form" field="email"></has-error>
                            </div>
                            <div class="form-group">
                                <label for="email">Total Student Bus</label>
                                <input v-model="form.bus" type="number" id="bus"
                                       placeholder="Total bus"
                                       class="form-control" :class="{ 'is-invalid': form.errors.has('bus') }" min="0">
                                <has-error :form="form" field="bus"></has-error>
                            </div>
                            <div class="form-group">
                                <label for="auditorium">Auditorium</label>
                                <input v-model="form.auditorium" type="number" id="auditorium"
                                       placeholder="Total auditorium"
                                       class="form-control" :class="{ 'is-invalid': form.errors.has('auditorium') }" min="0">
                                <has-error :form="form" field="auditorium"></has-error>
                            </div>
                            <div class="form-group">
                                <label for="hostel">Hostel</label>
                                <input v-model="form.hostel" type="number" id="hostel"
                                       placeholder="Total hostel"
                                       class="form-control" :class="{ 'is-invalid': form.errors.has('hostel') }" min="0">
                                <has-error :form="form" field="hostel"></has-error>
                            </div>
                            <div class="form-group">
                                <label for="play_ground">Play Ground</label>
                                <input v-model="form.play_ground" type="number" id="play_ground"
                                       placeholder="Total play ground"
                                       class="form-control" :class="{ 'is-invalid': form.errors.has('play_ground') }" min="0">
                                <has-error :form="form" field="play_ground"></has-error>
                            </div>
                            <div class="form-group">
                                <label for="restaurant">Institute Capeteria</label>
                                <select v-model="form.restaurant" id="restaurant" class="form-control">
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </select>
                                <has-error :form="form" field="restaurant"></has-error>
                            </div>
                            <div class="form-group">
                                <label for="events">Yearly Event</label>
                                <select v-model="form.events" id="events" class="form-control">
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </select>
                                <has-error :form="form" field="events"></has-error>
                            </div>
                            <div class="form-group">
                                <label>Publication Status</label>
                                <select v-model="form.isActive" id="isActive" class="form-control">
                                    <option value="Active">Publish</option>
                                    <option value="Draft">Draft</option>
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
        <div class="modal fade bd-example-modal-lg" id="instututeDepartments" tabindex="-1" role="dialog" aria-labelledby="instituteDepartmentsLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="instituteDepartmentsLabel">Institute Department Information</h5>
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
                                    <th>Credit</th>
                                    <th>Cost</th>
                                    <th>Faculty Members</th>
                                    <th>Students</th>
                                    <th>Degree</th>
                                    <th>Modify</th>
                                </tr>

                                <tr v-for="department in institute_departments.data" :key="department.institute_id">
                                    <td>{{department.name}}</td>
                                    <td>{{department.credit}}</td>
                                    <td>{{department.cost}}</td>
                                    <td>{{department.faculty_members}}</td>
                                    <td>{{department.students}}</td>
                                    <td>{{department.IEEB}}</td>

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
                        <h5 class="modal-title" id="instituteDepartmentsLabel">Institute Deparment Information</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form  @submit.prevent="departmentEditMode ? DepartmentUpdate() : addInstituteDepartment()">
                        <div class="modal-body">
                            <div class="form-group" v-show="!departmentEditMode">
                                <label for="degree" class="col-form-label">Department:</label>
                                <select v-model="departmentForm.department_id" class="form-control">
                                    <option v-for="department in departments" :key="department.id" :value="department.id">{{department.name}}</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="credit" class="col-form-label">Credit:</label>
                                <input type="number" v-model="departmentForm.credit" class="form-control" id="credit" min="0" :class="{ 'is-invalid': form.errors.has('credit') }">
                                <has-error :form="form" field="credit"></has-error>
                            </div>
                            <div class="form-group">
                                <label for="faculty_members" class="col-form-label">Faculty Members:</label>
                                <input type="number" v-model="departmentForm.faculty_members" class="form-control" id="faculty_members" min="0" required :class="{ 'is-invalid': form.errors.has('faculty_members') }">
                                <has-error :form="form" field="faculty_members"></has-error>
                            </div>
                            <div class="form-group">
                                <label for="students" class="col-form-label">Students:</label>
                                <input type="number" v-model="departmentForm.students" class="form-control" id="students" min="0" required :class="{ 'is-invalid': form.errors.has('students') }">
                                <has-error :form="form" field="students"></has-error>
                            </div>
                            <div class="form-group">
                                <label for="cost" class="col-form-label">Cost:</label>
                                <input type="number" v-model="departmentForm.cost" class="form-control" id="cost" min="0" required :class="{ 'is-invalid': form.errors.has('cost') }">
                                <has-error :form="form" field="cost"></has-error>
                            </div>
                            <div class="form-group">
                                <label for="computer" class="col-form-label">Computer:</label>
                                <input type="number" v-model="departmentForm.computer" class="form-control" id="computer" min="0" :class="{ 'is-invalid': form.errors.has('computer') }">
                                <has-error :form="form" field="computer"></has-error>
                            </div>
                            <div class="form-group">
                                <label for="degree" class="col-form-label">Degree:</label>
                                <select v-model="departmentForm.IEEB" class="form-control">
                                    <option value="">Select if have</option>
                                    <option value="IEEB">IEEB</option>
                                    <option value="Pharmacists">Pharmacists</option>
                                </select>
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
                visible: true,
                departmentEditMode: false,
                McreateMode:false,
                Mg1createMode:false,
                Mg2createMode:false,
                institutes: {},
                instituteTypes: {},
                departments:{},
                institute_id:'',
                institute_departments:{},
                districts: {},
                subDistricts: {},
                form: new Form({
                    id:'',
                    name : '',
                    estDate: '',
                    main_img: '',
                    gallery_img_1: '',
                    gallery_img_2: '',
                    ownership_type: '',
                    vice_chancellor: '',
                    address: '',
                    district_id: '',
                    sub_district_id: '',
                    institute_type_id: '',
                    phone: '',
                    email: '',
                    description: '',
                    hostel: '',
                    restaurant: 'Yes',
                    bus: '',
                    auditorium: '',
                    play_ground: '',
                    events: 'Yes',
                    isActive: 'Active',
                    department: []
                }),
                departmentForm: new Form({
                    institute_id:'',
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
            getDepartments(e)
            {
                this.visible = true;
                axios.get("api/get-departments/"+this.form.institute_type_id).then(({ data }) => (this.departments = data));
                
            },
            getSubDistricts(e)
            {
                axios.get("api/get-sub-districts/"+this.form.district_id).then(({ data }) => (this.subDistricts = data));  
            },
            getMainPhoto(){
                let main_img_pic = (this.form.main_img.length > 200) ? this.form.main_img : "img/institutes/"+ this.form.main_img ;
                return main_img_pic;
                    
            },
            getGalleryPhoto1(){
                let gallery_img_1_pic = (this.form.gallery_img_1.length > 200) ? this.form.gallery_img_1 : "img/institutes/"+ this.form.gallery_img_1 ;
                return gallery_img_1_pic;
                
            },
            getGalleryPhoto2(){
                let gallery_img_2_pic = (this.form.gallery_img_2.length > 200) ? this.form.gallery_img_2 : "img/institutes/"+ this.form.gallery_img_2 ;
                return gallery_img_2_pic;
            },
            
            newModal(){
                this.editMode = false;
                this.McreateMode = true;
                this.Mg1createMode = true;
                this.Mg2createMode = true;
                this.form.reset();
                axios.get("api/get-institute-types").then(({ data }) => (this.instituteTypes = data));
                axios.get("api/get-districts").then(({ data }) => (this.districts = data));
                $('#addNew').modal('show');
            },
            editModal(institute){
                this.McreateMode = false;
                this.Mg1createMode = false;
                this.Mg2createMode = false;
                this.editMode = true;
                this.visible = false;
                this.form.reset();
                axios.get("api/get-institute-types").then(({ data }) => (this.instituteTypes = data));
                axios.get("api/get-districts").then(({ data }) => (this.districts = data));
                //axios.get("api/get-departments/"+institute.institute_type_id).then(({ data }) => (this.departments = data));
                $('#addNew').modal('show');
                this.form.fill(institute);
            },
            settingInstituteDepartments(institute){
                axios.get("api/education-departments/"+institute.id).then( 
                    data => {this.institute_departments = data;
                });
                this.institute_id = institute.id;
                axios.get("api/departments").then(({ data }) => (this.departments = data));

                $('#instututeDepartments').modal('show');
            },
            departmentNewModal()
            {
                this.departmentEditMode = false;
                this.departmentForm.reset();
                $('#departmentFormModal').modal('show');
            },
            addInstituteDepartment(){
                this.$Progress.start();
                this.departmentForm.post('api/institute-departments/'+this.institute_id)
                .then(()=>{
                    $('#departmentFormModal').modal('hide');
                    $('#instututeDepartments').modal('hide');
                    Fire.$emit('takePageLoad');
                    swal(
                            'Inserted!',
                            'Your institute department information has been stored.',
                            'success'
                        )
                    this.$Progress.finish();
                }).catch(()=>{
                    swal("Failed","Institute Department Already Stored","warning");
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
                this.departmentForm.put('api/education-departments/')
                    .then(() => {
                        swal(
                            'Updated!',
                            'Your information has been updated.',
                            'success'
                        )
                        $('#departmentFormModal').modal('hide');
                        $('#instututeDepartments').modal('hide');
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
                        this.departmentForm.delete('api/delete_institute_department').then(()=>{
                            swal(
                                'Deleted!',
                                'Institute Deparment has been deleted.',
                                'success'
                            )
                            $('#instututeDepartments').modal('hide');
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
                    axios.get("api/education").then(({ data }) => (this.institutes = data));
                }
                this.$Progress.finish();
            },
            getResults(page = 1) {
                axios.get('api/education?page=' + page)
                    .then(response => {
                        this.institutes = response.data;
                    });
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
            getMainPhoto(){
                let photo = (this.form.main_img.length > 200) ? this.form.main_img : "img/institutes/"+ this.form.main_img ;
                return photo;
            }
        },
        created() {
            Fire.$on('searching',() => {
                let query = this.$parent.search;
                axios.get('api/find-institutes?q=' + query)
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