<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::apiResources(['user'=>'API\UserController']);
Route::get('profile','API\UserController@profile');
Route::put('profile','API\UserController@updateProfile');
Route::get('findUser', 'API\UserController@search');
Route::apiResources(['category'=>'API\CategoryController']);
Route::apiResources(['discuss'=>'API\ForumController']);
//Start Institute Routes
Route::apiResources(['education'=>'API\InstituteController']);
Route::get('departments','API\InstituteController@getDept');
Route::put('institude-departments','API\InstituteController@updateEducationDepartments');
Route::delete('delete_institute_department','API\InstituteController@destroyEducationDepartment');
Route::get('education-departments/{id}','API\InstituteController@getEduDept');
Route::put('education-departments','API\InstituteController@updateEducationDepartment');
Route::post('institute-departments/{institute_id}','API\InstituteController@addInstituteDepartment');
//Start Department
Route::apiResources(['admin-department'=>'API\DepartmentController']);
//Start Hospital & Department Relations
Route::apiResources(['dashboard/hospital'=>'API\HospitalController']);
Route::get('hospital/departments','API\HospitalController@getDept');
Route::put('hospital-departments','API\HospitalController@updateHospitalDepartments');
Route::delete('delete_hospital_department','API\HospitalController@destroyHospitalDepartment');
Route::get('hospital-departments/{id}','API\HospitalController@getHosDept');
Route::put('hospital-departments','API\HospitalController@updateHospitalDepartment');
Route::post('hospital-departments/{hospital_id}','API\HospitalController@addHospitalDepartment');
//Start Hospital Department
Route::apiResources(['dashboard-hospital-departments'=>'API\HospitalDepartmentController']);
//Start Hotel
Route::apiResources(['hotel'=>'API\HospitalController']);
//Start Hotel Rooms
Route::apiResources(['dashboard-room'=>'API\HotelRoomController']);

Route::get('findCategory', 'API\CategoryController@search');
Route::get('findDiscuss', 'API\ForumController@search');