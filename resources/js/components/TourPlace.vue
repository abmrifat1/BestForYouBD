<template>
    <div class="container">
        <div class="row mt-5 justify-content-center" v-if="$gate.isAdminOrAuthor()">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Tour Places Table</h3>

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
                                <th>Place Name</th>
                                <th>Place District</th>
                                <th>Place Sub-District</th>
                                <th>Status</th> 
                                <th>Modify</th>
                            </tr>

                            <tr v-for="(tourPlace,index) in tourPlaces.data" :key="tourPlace.id">

                                <td>{{index+1}}</td>
                                <td>{{tourPlace.name}}</td>
                                <td>{{tourPlace.districtName}}</td>
                                <td>{{tourPlace.subDistrictName}}</td>
                                <td>{{tourPlace.isActive}}</td>

                                <td>
                                    <a href="javascript:void(0)" @click="editModal(tourPlace)">
                                        <i class="fa fa-edit blue"></i>
                                    </a>
                                    <a href="javascript:void(0)" @click="deleted(tourPlace.id)">
                                        <i class="fa fa-trash red"></i>
                                    </a>

                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- /.card-body -->
                    <div class="card-footer">
                        <pagination :data="tourPlaces" @pagination-change-page="getResults"></pagination>
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
                        <h5 class="modal-title" v-show="editMode" id="addNewLabel">Update Tour Places Info</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form @submit.prevent="editMode ? update() : create()">
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="name">Tour Place Name</label>
                                <input v-model="form.name" type="text" id="name" name="name"
                                       placeholder="Name"
                                       class="form-control" :class="{ 'is-invalid': form.errors.has('name') }">
                                <has-error :form="form" field="name"></has-error>
                            </div>
                            <div class="form-group">
                                <label for="date">Star</label>
                                <input v-model="form.star" type="number" name="star"
                                       placeholder="Star"
                                       class="form-control" :class="{ 'is-invalid': form.errors.has('star') }">
                                <has-error :form="form" field="star"></has-error>
                            </div>
                            <div class="form-group">
                                <label for="owner">Website URL</label>
                                <input v-model="form.website_url" type="text" name="owner"
                                       placeholder="Website link"
                                       class="form-control" :class="{ 'is-invalid': form.errors.has('website_url') }">
                                <has-error :form="form" field="website_url"></has-error>
                            </div>

                            <div class="form-group">
                                <label for="address">Tour Place Address</label>
                                <textarea v-model="form.address" name="address" id="address"
                                  placeholder="Address"
                                  class="form-control" :class="{ 'is-invalid': form.errors.has('address') }"></textarea>
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
                                <label for="main_img"><img class="mt-1" src="img/tour_places/default.jpg" style="width:80%;height:25%;" alt="Main Image"></label>
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
                                <label for="gallery_img_1"><img class="mt-1" src="img/tour_places/default.jpg" style="width:80%;height:25%;" alt="Gallery Image:1"></label>
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
                                <label for="gallery_img_2"><img class="mt-1" src="img/tour_places/default.jpg" style="width:80%;height:25%;" alt="Gallery Image:2"></label>
                            </div>
                            <div class="widget-user-image" v-else>
                                <label for="gallery_img_2"><img class="mt-1" :src="getGalleryPhoto2()" style="width:80%;height:25%;" alt="Gallery Image:2"></label>
                            </div>
                            <div class="form-group">
                                <label for="gallery_img_2">Gallery Image:2</label>
                                <div class="input-group">
                                    <div class="custom-file">
                                        <input type="file" @change="Gallery_image_2" class="custom-file-input" id="gallery_img_2" accept="image/*" :class="{ 'is-invalid': form.errors.has('gallery_img_2') }">
                                        <label class="custom-file-label" for="gallery_img_2">Choose file</label>
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
                tourPlaces: {},
                districts: {},
                subDistricts: {},
                form: new Form({
                    id:'',
                    name : '',
                    user_id : '',
                    star: '',
                    rating: '',
                    main_img: '',
                    gallery_img_1: '',
                    gallery_img_2: '',
                    website_url: '',
                    address: '',
                    description: '',
                    district_id: '',
                    sub_district_id: '',
                    isActive: 'Active',
                    restaurant: 'Yes',
                    cafe: 'Yes',
                    car_parking: 'Yes',
                }),
            }
        },
        methods: {
            getMainPhoto(){
                let main_img_pic = (this.form.main_img.length > 200) ? this.form.main_img : "img/tour_places/"+ this.form.main_img ;
                return main_img_pic;
                    
            },
            getGalleryPhoto1(){
                let gallery_img_1_pic = (this.form.gallery_img_1.length > 200) ? this.form.gallery_img_1 : "img/tour_places/"+ this.form.gallery_img_1 ;
                return gallery_img_1_pic;
                
            },
            getGalleryPhoto2(){
                let gallery_img_2_pic = (this.form.gallery_img_2.length > 200) ? this.form.gallery_img_2 : "img/tour_places/"+ this.form.gallery_img_2 ;
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
                axios.get("api/get-districts").then(({ data }) => (this.districts = data));
                
                $('#addNew').modal('show');
            },
            editModal(tourPlace){
                this.McreateMode = false;
                this.Mg1createMode = false;
                this.Mg2createMode = false;
                this.editMode = true;
                this.form.reset();
                $('#addNew').modal('show');
                axios.get("api/get-districts").then(({ data }) => (this.districts = data));
                this.form.fill(tourPlace);
            },
            update(){
                this.$Progress.start();
                this.form.put('api/dashboard/tour-place/'+this.form.id)
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
                this.Mg2createMode = false;
                let file = e.target.files[0];
                //console.log(file);
                let reader = new FileReader();
                    reader.onloadend = (file) => {
                        this.form.gallery_img_2 = reader.result;
                    }
                    reader.readAsDataURL(file);
            },
            load(){
                this.$Progress.start();
                if(this.$gate.isAdminOrAuthor()){
                    axios.get("api/dashboard/tour-place").then(({ data }) => (this.tourPlaces = data));
                }
                this.$Progress.finish();
            },
            getResults(page = 1) {
                axios.get('api/dashboard/tour-place?page=' + page)
                    .then(response => {
                        this.tourPlaces = response.data;
                    });
            },
            create(){
                this.$Progress.start();
                this.form.post('api/dashboard/tour-place')
                .then(()=>{
                    Fire.$emit('takePageLoad');
                    $('#addNew').modal('hide');
                    toast({
                        type: 'success',
                        title: 'Tour place created successfully'
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
                        this.form.delete('api/dashboard/tour-place/'+id).then(()=>{
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
                let photo = (this.form.main_img.length > 200) ? this.form.main_img : "img/tour_places/"+ this.form.main_img ;
                return photo;
            }
        },
        created() {
            Fire.$on('searching',() => {
                let query = this.$parent.search;
                axios.get('api/find-tour-places?q=' + query)
                    .then((data) => {
                        this.tourPlaces = data.data
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