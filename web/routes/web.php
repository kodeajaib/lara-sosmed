<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| This file is where you may define all of the routes that are handled
| by your application. Just tell Laravel the URIs it should respond
| to using a Closure or controller method. Build something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('profile', 'UserController@profile');
Route::get('profile/{id}/edit', 'UserController@edit');
Route::post('profile', 'UserController@update_avatar');
Route::post('profile/update/{id}', 'UserController@update');

Auth::routes();

//Route::get('/home', 'HomeController@index');
Route::resource('home', 'HomeController');
Route::get('home/destroy/{id}', 'HomeController@destroy'); //hapus data