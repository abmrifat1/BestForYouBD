<style>
    .widget-user-header{
        background-position: center center;
        background-size: cover;
        height: 250px !important;
    }
    .widget-user .card-footer{
        padding: 0;
    }

</style>


<template>
    <div class="container">
        <div class="row">
            <div class="col-md-12 mt-3">
                <div class="card card-widget widget-user">
                    <!-- Add the bg color to the header using any of the bg-* classes -->
                    <div class="widget-user-header text-white" style="background-image:url('./img/cover-default.jpg')">
                        <h3 class="widget-user-username">{{ this.form.name}}</h3>
                    </div>
                    <div class="widget-user-image">
                        <img class="img-circle mt-1" :src="getProfilePhoto()" alt="User Avatar">
                    </div>
                    <!--
                    <div class="card-footer">
                        <div class="row">
                            <div class="col-sm-4 border-right">
                                <div class="description-block">
                                    <h5 class="description-header">3,200</h5>
                                    <span class="description-text">Leave Taken</span>
                                </div>
                               
                            </div>
                            
                            <div class="col-sm-4 border-right">
                                <div class="description-block">
                                    <h5 class="description-header">13,000</h5>
                                    <span class="description-text">Has Leave</span>
                                </div>
                                
                            </div>
                            
                            <div class="col-sm-4">
                                <div class="description-block">
                                    <h5 class="description-header">35</h5>
                                    <span class="description-text">Rating</span>
                                </div>
                                
                            </div>
                            
                        </div>
                       
                    </div>-->
                </div>
            </div>

            <!-- tab -->

            <div class="col-md-12">
                <div class="card">
                    <div class="card-header p-2">
                        <ul class="nav nav-pills">
                            <<li class="nav-item"><a class="nav-link" href="#activity" data-toggle="tab">Status</a></li>
                            <li class="nav-item"><a class="nav-link active show" href="#settings" data-toggle="tab">Settings</a></li>
                        </ul>
                    </div><!-- /.card-header -->
                    <div class="card-body">
                        <div class="tab-content">
                            <!-- Activity Tab -->
                            <div class="tab-pane" id="activity">
                                <h3 class="text-center green">You're Verified</h3>

                            </div>
                            <!-- Setting Tab -->
                            <div class="tab-pane active show" id="settings">
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label for="inputName" class="col-sm-2 control-label">Name</label>

                                        <div class="col-sm-12">
                                            <input type="text" v-model="form.name" class="form-control" id="inputName" placeholder="Name" :class="{ 'is-invalid': form.errors.has('name') }">
                                            <has-error :form="form" field="name"></has-error>
                                        </div>
                                    </div>
                                    <!--<div class="form-group">
                                        <label for="inputEmail" class="col-sm-2 control-label">Email</label>

                                        <div class="col-sm-12">
                                            <input type="email" v-model="form.email" class="form-control" id="inputEmail" placeholder="Email"  :class="{ 'is-invalid': form.errors.has('email') }">
                                            <has-error :form="form" field="email"></has-error>
                                        </div>
                                    </div>-->

                                    <div class="form-group">
                                        <label for="inputExperience" class="col-sm-2 control-label">Bio</label>

                                        <div class="col-sm-12">
                                            <textarea  v-model="form.bio" class="form-control" id="inputExperience" placeholder="Experience" :class="{ 'is-invalid': form.errors.has('bio') }"></textarea>
                                            <has-error :form="form" field="bio"></has-error>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="photo" class="col-sm-2 control-label">Profile Photo</label>
                                        <div class="col-sm-12">
                                            <input type="file" accept="image/*" @change="updateProfile" name="photo" class="form-input">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="password" class="col-sm-12 control-label">Password (Leave empty if do not want to change)</label>

                                        <div class="col-sm-12">
                                            <input type="password"
                                                   v-model="form.password"
                                                   class="form-control"
                                                   id="password"
                                                   placeholder="Passport"
                                                   :class="{ 'is-invalid': form.errors.has('password') }"
                                            >
                                            <span>Password must be 6 character</span>
                                            <has-error :form="form" field="password"></has-error>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="password" class="col-sm-12 control-label">Re Password</label>

                                        <div class="col-sm-12">
                                            <input type="password"
                                                   v-model="form.password_confirmation"
                                                   class="form-control"
                                                   id="password"
                                                   placeholder="Re-Passport"
                                                   :class="{ 'is-invalid': form.errors.has('password_confirmation') }"
                                            >
                                            <has-error :form="form" field="password"></has-error>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-12">
                                            <button @click.prevent="updateInfo" type="submit" class="btn btn-success">Update</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <!-- /.tab-pane -->
                        </div>
                        <!-- /.tab-content -->
                    </div><!-- /.card-body -->
                </div>
                <!-- /.nav-tabs-custom -->
            </div>
            <!-- end tabs -->
        </div>
    </div>
</template>



<script>
    export default {
        data(){
            return {
                data:{},
                form: new Form({
                    id:'',
                    name : '',
                    password: '',
                    password_confirmation: '',
                    bio: '',
                    photo: ''
                })
            }
        },
        mounted() {

            console.log('Component mounted.')
        },
        created() {
            axios.get("api/profile")
                .then(({ data }) => (this.form.fill(data)));
        },
        methods:{
            getProfilePhoto(){

                let photo = (this.form.photo.length > 200) ? this.form.photo : "img/profile/"+ this.form.photo ;
                return photo;
            },

            updateInfo(){
                this.$Progress.start();
                if(this.form.password == ''){
                    this.form.password = undefined;
                }
                this.form.put('api/profile')
                    .then(()=>{
                        /*Fire.$emit('takePageLoad');*/
                        swal({
                            type: 'success',
                            title: 'Yeaaa...!',
                            text: 'You are success to updated your information',
                        })
                        this.$Progress.finish();
                    })
                    .catch(() => {
                        this.$Progress.fail();
                        swal({
                            type: 'error',
                            title: 'Oops...',
                            text: 'You are failed to update',
                        })
                    });
            },
            updateProfile(e){
                // console.log('uploading');
                let file = e.target.files[0];
                //console.log(file);
                let reader = new FileReader();
                // let vm = this;
                let limit = 1024 * 1024 * 2;
                if(file['size'] < limit){
                    reader.onloadend = (file) => {
                        // console.log('RESULT', reader.result)
                        this.form.photo = reader.result;
                    }
                    reader.readAsDataURL(file);
                }else{
                    swal({
                        type: 'error',
                        title: 'Oops...',
                        text: 'You are uploading a large file, cancel upload file',
                    });
                    /*Fire.$emit('takePageLoad');*/

                }
            }
        },
        updateLoad() {
            alert("Hello world");
            /*Fire.$on('takePageLoad',() => {
                alert("Hello world");
            });*/
            // setInterval(() => this.loadUsers(), 3000);
        }

    }
</script>
