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
    Route::resource('post','Api\PostController');
    Route::post('search','Api\PostController@search');
});
Route::post('/login','Api\UserController@login');
Route::post('/register','Api\UserController@register');
Route::get('/logout','Api\UserController@logout');

//Route::group(['middleware'=>'api.token'],function(){
    Route::resource('post','Api\PostController');
    Route::post('search','Api\PostController@search');
//});