<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/','front\WebsiteController@index');
Route::post('/search','front\WebsiteController@search');
Route::get('/get-districts','front\WebsiteController@districts');
Route::get('/get-subdistricts/{district_id}', 'front\WebsiteController@subDistricts');
//Institute routes
Route::get('/institutes','front\WebsiteController@institutes');
Route::get('/institute/{id}','front\WebsiteController@showInstitute');
Route::post('/search-institute','front\WebsiteController@searchInstitute');
Route::post('/filter-institutes','front\WebsiteController@filterInstitute');
Route::post('/institute-compare','front\WebsiteController@instituteCompare');
//Hospital routes
Route::get('/hospitals','front\WebsiteController@hospitals');
Route::get('/hospital/{id}','front\WebsiteController@showHospital');
Route::post('/search-hospital','front\WebsiteController@searchHospital');
Route::post('/filter-hospitals','front\WebsiteController@filterHospital');
Route::post('/hospital-compare','front\WebsiteController@hospitalCompare');
//Hotel rountes
Route::get('/hotels','front\WebsiteController@hotels');
Route::get('/hotel/{id}','front\WebsiteController@showhotel');
Route::post('/search-hotel','front\WebsiteController@searchHotel');
Route::post('/filter-hotels','front\WebsiteController@filterHotel');
Route::post('/hotel-compare','front\WebsiteController@hotelCompare');
//Tour Place route
Route::get('/tour-places','front\WebsiteController@tourPlaces');
Route::get('/tour-place/{id}','front\WebsiteController@showTourPlace');
Route::post('/search-tour-place','front\WebsiteController@searchTourPlace');
Route::post('/filter-tour-places','front\WebsiteController@filterTourPlace');
Route::post('/tour-place-compare','front\WebsiteController@tourPlaceCompare');

Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');
Route::get('/discuss', 'Forum\ForumController@index')->name('forum');
Route::get('/single', 'Forum\ForumController@single');
Route::resource('discuss/post','Forum\ForumController');
Route::get('/discuss/category-post/{id}', 'Forum\ForumController@category_posts');
Route::post('/discuss/comment', 'Forum\ForumController@storeComment');
Route::post('/search-question','Forum\ForumController@searchQuestion');
Route::get('{path}',"HomeController@index")->where( 'path', '([A-z\d-\/_.]+)?' );

