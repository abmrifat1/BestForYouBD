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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/discuss', 'Forum\ForumController@index')->name('forum');
Route::get('/single', 'Forum\ForumController@single');
Route::resource('discuss/post','Forum\ForumController');
Route::get('/discuss/category-post/{id}', 'Forum\ForumController@category_posts');
Route::post('/discuss/comment', 'Forum\ForumController@storeComment');
Route::get('{path}',"HomeController@index")->where( 'path', '([A-z\d-\/_.]+)?' );
