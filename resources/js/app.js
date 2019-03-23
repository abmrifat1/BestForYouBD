
/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');
window.Vue = require('vue');
import moment from 'moment';
/*Vue vform registration*/
import { Form, HasError, AlertError } from 'vform'
window.Form=Form;
Vue.component(HasError.name, HasError)
Vue.component(AlertError.name, AlertError)
Vue.component('pagination', require('laravel-vue-pagination'));
/*Start sweetalert2*/

import Gate from "./Gate";
Vue.prototype.$gate = new Gate(window.user);

import swal from 'sweetalert2'
window.swal = swal
const toast = swal.mixin({
    toast: true,
    position: 'top-end',
    showConfirmButton: false,
    timer: 3000
});
window.toast = toast
/*End toast or sweetalert2*/
window.Fire = new Vue();

import VueRouter from 'vue-router'
Vue.use(VueRouter)
/*----Start vue-progressbar*/
import VueProgressBar from 'vue-progressbar'
/*Progress bar registration*/
const options = {
    color: '#bffaf3',
    failedColor: '#874b4b',
    thickness: '5px',
    transition: {
        speed: '0.4s',
        opacity: '0.6s',
        termination: 300
    },
    autoRevert: true,
    location: 'top',
    inverse: false
}
Vue.use(VueProgressBar, options)
/*End progress bar*/

/*Vue routes*/
let routes = [
    { path: '/home', component: require('./components/Dashboard.vue')},
    { path: '/dashboard', component: require('./components/Dashboard.vue')},
    { path: '/dashboard-users', component: require('./components/Users.vue') },
    { path: '/dashboard-profile', component: require('./components/Profile.vue') },
    { path: '/dashboard-institutions', component: require('./components/Education.vue') },
    { path: '/dashboard-institute-departments', component: require('./components/Department.vue') },
    { path: '/dashboard-hospitals', component: require('./components/Hospital.vue') },
    { path: '/dashboard-hospital-departments', component: require('./components/HospitalDepartment.vue') },
    { path: '/dashboard-hotels', component: require('./components/Hotel.vue') },
    { path: '/dashboard-tour-places', component: require('./components/TourPlace.vue') },
    { path: '/dashboard-subdistricts', component: require('./components/SubDistrict.vue') },
    { path: '/dashboard-districts', component: require('./components/District.vue') },
    { path: '/dashboard-hotel-rooms', component: require('./components/HotelRoom.vue') },
    { path: '/dashboard-forum-posts', component: require('./components/Forum.vue') },
    { path: '/dashboard-forum-categories', component: require('./components/Categories.vue') },
    
    { path: '*', component: require('./components/NotFound.vue') }
]

const router = new VueRouter({
    mode: 'history',
    routes // short for `routes: routes`
});
Vue.filter('upText',function(text){
    return text.charAt(0).toUpperCase() + text.slice(1);
});
Vue.filter('myDate',function (created) {
    return moment(created).format('MMMM Do YYYY');
});
/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */
Vue.component(
    'not-found',
    require('./components/NotFound.vue')
);
Vue.component('example-component', require('./components/ExampleComponent.vue'));

const app = new Vue({
    el: '#app',
    router,
    /*Start search*/
    data:{
        search: ''
    },
    methods:{
        searchit: _.debounce(() => {
            Fire.$emit('searching');
        },500)
    }
    /*End search*/
});
