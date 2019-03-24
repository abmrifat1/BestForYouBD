<template>
    <div class="container">
        <div class="row mt-5 justify-content-center" v-if="$gate.isAdminOrAuthor()">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Hotels Table</h3>

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
                                <th>Hotel Name</th>
                                <th>Status</th>
                                <th>Modify</th>
                            </tr>

                            <tr v-for="(hotel,index) in hotels.data" :key="hotel.id">

                                <td>{{index+1}}</td>
                                <td>{{hotel.name}}</td>
                                <td>{{hotel.isActive}}</td>

                                <td>
                                    <a href="javascript:void(0)" @click="settingHotelRooms(hotel)">
                                        <i class="fas fa-cog blue" data-toggle="tooltip" data-placement="top" title="Add Room Variation"></i>
                                    </a>
                                    <a href="javascript:void(0)" @click="editModal(hotel)">
                                        <i class="fa fa-edit blue"></i>
                                    </a>
                                    <a href="javascript:void(0)" @click="deleted(hotel.id)">
                                        <i class="fa fa-trash red"></i>
                                    </a>

                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- /.card-body -->
                    <div class="card-footer">
                        <pagination :data="hotels" @pagination-change-page="getResults"></pagination>
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
                        <h5 class="modal-title" v-show="editMode" id="addNewLabel">Update Hotels Info</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form @submit.prevent="editMode ? update() : create()">
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="name">Hotel Name</label>
                                <input v-model="form.name" type="text" id="name" name="name"
                                       placeholder="Name"
                                       class="form-control" :class="{ 'is-invalid': form.errors.has('name') }" required>
                                <has-error :form="form" field="name"></has-error>
                            </div>

                            <div class="form-group">
                                <label for="date">Establish Date</label>
                                <input v-model="form.estDate" type="date" name="estDate"
                                       placeholder="estDate"
                                       class="form-control" :class="{ 'is-invalid': form.errors.has('estDate') }" required>
                                <has-error :form="form" field="estDate"></has-error>
                            </div>
                            <div class="form-group">
                                <label for="date">Star</label>
                                <input v-model="form.star" type="number" name="star"
                                       placeholder="Star"
                                       class="form-control" :class="{ 'is-invalid': form.errors.has('star') }" required>
                                <has-error :form="form" field="star"></has-error>
                            </div>
                            <div class="form-group">
                                <label for="owner">Owner Name</label>
                                <input v-model="form.owner" type="text" name="owner"
                                       placeholder="Owner"
                                       class="form-control" :class="{ 'is-invalid': form.errors.has('owner') }">
                                <has-error :form="form" field="owner"></has-error>
                            </div>
                            <div class="form-group">
                                <label for="owner">Website URL</label>
                                <input v-model="form.website_url" type="text" name="owner"
                                       placeholder="Website link"
                                       class="form-control" :class="{ 'is-invalid': form.errors.has('website_url') }">
                                <has-error :form="form" field="website_url"></has-error>
                            </div>
                            <div class="form-group">
                                <label for="phone">Phone Number</label>
                                <input v-model="form.phone" type="text" name="phone"
                                       placeholder="Phone"
                                       class="form-control" :class="{ 'is-invalid': form.errors.has('phone') }">
                                <has-error :form="form" field="phone"></has-error>
                            </div>
                            <div class="form-group">
                                <label for="email">Email Address</label>
                                <input v-model="form.email" type="email" name="email"
                                       placeholder="E-mail"
                                       class="form-control" :class="{ 'is-invalid': form.errors.has('email') }">
                                <has-error :form="form" field="email"></has-error>
                            </div>

                            <div class="form-group">
                                <label for="address">Hotel Address</label>
                                <textarea v-model="form.address" name="address" id="address"
                                  placeholder="Address"
                                  class="form-control" :class="{ 'is-invalid': form.errors.has('address') }" required></textarea>
                                <has-error :form="form" field="address"></has-error>
                            </div><div class="form-group">
                                <label>District</label>
                                <select class="form-control" v-model="form.district_id" style="width:100%;" @change="getSubDistricts" :class="{ 'is-invalid': form.errors.has('district') }" required>
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
                                <label for="main_img"><img class="mt-1" src="img/hotels/default.jpg" style="width:80%;height:25%;" alt="Main Image"></label>
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
                                <label for="gallery_img_1"><img class="mt-1" src="img/hotels/default.jpg" style="width:80%;height:25%;" alt="Gallery Image:1"></label>
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
                                <label for="gallery_img_2"><img class="mt-1" src="img/hotels/default.jpg" style="width:80%;height:25%;" alt="Gallery Image:2"></label>
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
                                <label for="address">Hotel Description</label>
                                <textarea v-model="form.description" name="description" id="description"
                                  placeholder="Description"
                                  class="form-control" :class="{ 'is-invalid': form.errors.has('description') }"></textarea>
                                <has-error :form="form" field="description"></has-error>
                            </div>

                            <div class="form-group" v-show="!editMode">
                                <label>Select Room Types</label><br/>
                                <ul class="list-group">
                                    <li v-for="room in rooms" class="list-group-item" :key="room.id">
                                        <input type="checkbox" v-model="form.room" :value="room.id"> {{room.name}}
                                    </li>
                                </ul>
                            </div>
                            <div class="form-group">
                                <label>Car Parking</label><br/>
                                <select v-model="form.car_parking" id="car_parking" class="form-control">
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Restaurant</label><br/>
                                <select v-model="form.restaurant" id="restaurant" class="form-control">
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Cafe</label><br/>
                                <select v-model="form.cafe" id="cafe" class="form-control">
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="phone">Total Room</label>
                                <input v-model="form.total_room" type="text" name="total_room"
                                       placeholder="Room Number"
                                       class="form-control" :class="{ 'is-invalid': form.errors.has('total_room') }">
                                <has-error :form="form" field="total_room"></has-error>
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
        <div class="modal fade bd-example-modal-lg" id="hotelRoomsModal" tabindex="-1" role="dialog" aria-labelledby="instituteDepartmentsLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="instituteDepartmentsLabel">Hotel Room Information</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="card-body table-responsive p-0">
                            <table class="table table-hover">
                                <tbody>
                                <tr>
                                    <th>Room Name</th>
                                    <th>Total Room</th>
                                    <th>Number of Bed</th>
                                    <th>Bed Type</th>
                                    <th>Price</th>
                                    <th>Modify</th>
                                </tr>

                                <tr v-for="room in hotel_rooms.data" :key="room.hotel_id">
                                    <td>{{room.name}}</td>
                                    <td>{{room.total_room}}</td>
                                    <td>{{room.bedNumber}}</td>
                                    <td>{{room.bedtype}}</td>
                                    <td>{{room.price}}</td>

                                    <td>
                                        <a href="javascript:void(0)" @click="editRoom(room)">
                                            <i class="fa fa-edit blue"></i>
                                        </a>
                                        <a href="javascript:void(0)" @click="roomDelete(room)">
                                            <i class="fa fa-trash red"></i>
                                        </a>

                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary" @click="roomNewModal()">Add Room <i
                                class="fas fa-plus fa-fw"></i></button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Room -->
        <!-- Modal -->
        <div class="modal fade" id="roomFormModal" tabindex="-1" role="dialog" aria-labelledby="instituteDepartmentsLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="instituteDepartmentsLabel">Hotel Room Information</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form  @submit.prevent="roomEditMode ? roomUpdate() : addHotelRoom()">
                        <div class="modal-body">
                            <div class="form-group" v-show="!roomEditMode">
                                <label for="degree" class="col-form-label">Room:</label>
                                <select v-model="roomForm.room_type_id" class="form-control">
                                    <option v-for="room in rooms" :key="room.id" :value="room.id">{{room.name}}</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="faculty_members" class="col-form-label">Total Bed Number:</label>
                                <input type="number" v-model="roomForm.bedNumber" class="form-control" id="faculty_members">
                            </div>
                            <div class="form-group">
                                <label for="students" class="col-form-label">Bed Type:</label>
                                <select v-model="roomForm.bedtype" class="form-control">
                                    <option value="Single bed">Single bed</option>
                                    <option value="Double bed">Double bed</option>
                                    <option value="Queen Double bed">Queen Double bed</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Self check in</label><br/>
                                <select v-model="roomForm.self_check_in" id="self_check_in" class="form-control">
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Bedroom Comforts</label><br/>
                                <select v-model="roomForm.bedroom_comforts" id="bedroom_comforts" class="form-control">
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Bathroom</label><br/>
                                <select v-model="roomForm.bathroom" id="bathroom" class="form-control">
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>TV</label><br/>
                                <select v-model="roomForm.tv" id="tv" class="form-control">
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Sofa</label><br/>
                                <select v-model="roomForm.sofa" id="sofa" class="form-control">
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Coffee Maker</label><br/>
                                <select v-model="roomForm.coffee_maker" id="coffee_maker" class="form-control">
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Hair Dryer</label><br/>
                                <select v-model="roomForm.hair_dryer" id="hair_dryer" class="form-control">
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Iron</label><br/>
                                <select v-model="roomForm.iron" id="iron" class="form-control">
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Heating</label><br/>
                                <select v-model="roomForm.heating" id="heating" class="form-control">
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Air Conditioning</label><br/>
                                <select v-model="roomForm.air_conditioning" id="air_conditioning" class="form-control">
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Wifi</label><br/>
                                <select v-model="roomForm.wifi" id="wifi" class="form-control">
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Smoke Detector</label><br/>
                                <select v-model="roomForm.smoke_detector" id="smoke_detector" class="form-control">
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="faculty_members" class="col-form-label">Price per day:</label>
                                <input type="text" v-model="roomForm.price" class="form-control" id="faculty_members">
                            </div>
                            <div class="form-group">
                                <label for="credit" class="col-form-label">Total rooms in this hotel:</label>
                                <input type="number" v-model="roomForm.total_room" class="form-control" id="credit">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button v-show="roomEditMode" type="submit" class="btn btn-success">Update</button>
                            <button v-show="!roomEditMode" type="submit" class="btn btn-success">Create</button>
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
                roomEditMode: false,
                McreateMode:false,
                Mg1createMode:false,
                Mg2createMode:false,
                hotels: {},
                rooms:{},
                districts: {},
                subDistricts: {},
                hotel_id:'',
                hotel_rooms:{},
                form: new Form({
                    id:'',
                    name : '',
                    estDate: '',
                    star: '',
                    rating: '',
                    main_img: '',
                    gallery_img_1: '',
                    gallery_img_2: '',
                    owner: '',
                    website_url: '',
                    address: '',
                    phone: '',
                    email: '',
                    description: '',
                    district_id: '',
                    sub_district_id: '',
                    isActive: 'Active',
                    restaurant: 'Yes',
                    cafe: 'Yes',
                    car_parking: 'Yes',
                    total_room: '',
                    room: []
                }),
                roomForm: new Form({
                    hotel_id:'',
                    room_type_id:'',
                    total_room:'',
                    bedNumber:'',
                    bedtype:'',
                    self_check_in:'Yes',
                    bedroom_comforts:'Yes',
                    bathroom:'Yes',
                    tv:'Yes',
                    sofa:'Yes',
                    coffee_maker:'Yes',
                    hair_dryer:'Yes',
                    iron:'Yes',
                    heating:'Yes',
                    air_conditioning:'Yes',
                    wifi:'Yes',
                    smoke_detector:'Yes',
                    price:'',
                })
            }
        },
        methods: {
            getMainPhoto(){
                let main_img_pic = (this.form.main_img.length > 200) ? this.form.main_img : "img/hotels/"+ this.form.main_img ;
                return main_img_pic;
                    
            },
            getGalleryPhoto1(){
                let gallery_img_1_pic = (this.form.gallery_img_1.length > 200) ? this.form.gallery_img_1 : "img/hotels/"+ this.form.gallery_img_1 ;
                return gallery_img_1_pic;
                
            },
            getGalleryPhoto2(){
                let gallery_img_2_pic = (this.form.gallery_img_2.length > 200) ? this.form.gallery_img_2 : "img/hotels/"+ this.form.gallery_img_2 ;
                return gallery_img_2_pic;
            },
            getSubDistricts(e)
            {
                axios.get("api/get-sub-districts/"+this.form.district_id).then(({ data }) => (this.subDistricts = data));  
            },
            newModal(){
                this.editMode = false;
                this.McreateMode = true;
                this.Mg1createMode = true;
                this.Mg2createMode = true;
                this.form.reset();
                //axios.get("api/education/create").then( response => (this.departments = response));
                axios.get("api/get-districts").then(({ data }) => (this.districts = data));
                $('#addNew').modal('show');
            },
            editModal(hotel){
                this.McreateMode = false;
                this.Mg1createMode = false;
                this.Mg2createMode = false;
                this.editMode = true;
                this.form.reset();
                $('#addNew').modal('show');
                axios.get("api/get-districts").then(({ data }) => (this.districts = data));
                this.form.fill(hotel);
            },
            settingHotelRooms(hotel){
                axios.get("api/hotel-rooms/"+hotel.id).then( 
                    data => {this.hotel_rooms = data;
                });
                this.hotel_id = hotel.id;
                $('#hotelRoomsModal').modal('show');
            },
            roomNewModal()
            {
                this.roomEditMode = false;
                this.roomForm.reset();
                $('#roomFormModal').modal('show');
            },
            addHotelRoom(){
                this.$Progress.start();
                this.roomForm.post('api/hotel-rooms/'+this.hotel_id)
                .then(()=>{
                    $('#roomFormModal').modal('hide');
                    $('#hotelRoomsModal').modal('hide');
                    Fire.$emit('takePageLoad');
                    swal(
                            'Inserted!',
                            'Your hotel room information has been stored.',
                            'success'
                        )
                    this.$Progress.finish();
                }).catch(()=>{
                    swal("Failed","hotel room Already Stored","warning");
                    this.$Progress.fail();
                })
            },
            editRoom(room){
                this.roomEditMode = true;
                this.roomForm.reset();
                $('#roomFormModal').modal('show');
                this.roomForm.fill(room);
            },
            roomUpdate(){
                this.$Progress.start();
                this.roomForm.put('api/hotel-rooms/')
                    .then(() => {
                        swal(
                            'Updated!',
                            'Your information has been updated.',
                            'success'
                        )
                        $('#roomFormModal').modal('hide');
                        $('#hotelRoomsModal').modal('hide');
                        this.$Progress.finish();
                        Fire.$emit('takePageLoad');
                    })
                    .catch(() => {
                        swal("Failed","There was something wrong.","warning");
                        this.$Progress.fail();
                });
            },
            roomDelete(room){
                this.$Progress.start();
                this.roomForm.reset();
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

                        this.roomForm.fill(room);
                        this.roomForm.delete('api/delete-hotel-room').then(()=>{
                            swal(
                                'Deleted!',
                                'Hotel Deparment has been deleted.',
                                'success'
                            )
                            $('#hotelRoomsModal').modal('hide');
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
                this.form.put('api/dashboard/hotel/'+this.form.id)
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
                    axios.get("api/dashboard/hotel").then(({ data }) => (this.hotels = data));
                }
                axios.get("api/hotel-rooms").then(({ data }) => (this.rooms = data));
                this.$Progress.finish();
            },
            getResults(page = 1) {
                axios.get('api/dashboard/hotel?page=' + page)
                    .then(response => {
                        this.hotels = response.data;
                    });
            },
            create(){
                this.$Progress.start();
                this.form.post('api/dashboard/hotel')
                .then(()=>{
                    Fire.$emit('takePageLoad');
                    $('#addNew').modal('hide');
                    toast({
                        type: 'success',
                        title: 'Hotel created successfully'
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
                        this.form.delete('api/dashboard/hotel/'+id).then(()=>{
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
                let photo = (this.form.main_img.length > 200) ? this.form.main_img : "img/hotels/"+ this.form.main_img ;
                return photo;
            }
        },
        created() {
            Fire.$on('searching',() => {
                let query = this.$parent.search;
                axios.get('api/findhospital?q=' + query)
                    .then((data) => {
                        this.hotels = data.data
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