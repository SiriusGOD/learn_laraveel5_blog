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

// Route::get('/', 'Home\IndexController@index');
// Route::get('/cate', 'Home\IndexController@cate');
// Route::get('/art', 'Home\IndexController@article');

// Route::any('/admin/login','Admin\LoginController@login');
// Route::get('/admin/code','Admin\LoginController@code'); //驗證碼
//Route::get('/admin/getcode','Admin\LoginController@getcode'); //驗證碼

Route::group(['middleware' => ['web']], function () {

    Route::get('/', 'Home\IndexController@index');
    Route::get('/cate/{cate_id}', 'Home\IndexController@cate');
    Route::get('/a/{art_id}', 'Home\IndexController@article');

    Route::any('admin/login', 'Admin\LoginController@login');
    Route::get('admin/code', 'Admin\LoginController@code');
    Route::get('admin/test', 'Admin\LoginController@test');
});




// Route::group(['middleware' => ['web','admin.login']], function () {
//     Route::any('/admin/index','Admin\IndexController@index');
//     Route::any('/admin/info','Admin\IndexController@info');
//     Route::any('/admin/quit','Admin\LoginController@quit');
// });//可改成下方寫法

Route::group(['middleware' => ['web','admin.login'],'prefix'=>'admin','namespace'=>'Admin'], function () {
    Route::get('/', 'IndexController@index');
    Route::get('info', 'IndexController@info');
    Route::get('quit', 'LoginController@quit');
    Route::any('pass', 'IndexController@pass');


    Route::post('cate/changeorder', 'CategoryController@changeorder');
    Route::resource('category', 'CategoryController');

    Route::resource('article', 'ArticleController');

    Route::post('links/changeorder', 'LinksController@changeorder');
    Route::resource('links', 'LinksController');
    
    Route::post('navs/changeorder', 'NavsController@changeorder');
    Route::resource('navs', 'NavsController');

    Route::get('config/putfile', 'NavsController@putFile');
    Route::post('config/changecontent', 'ConfigController@changeContent');
    Route::post('config/changeorder', 'ConfigController@changeorder');
    Route::resource('config', 'ConfigController');

    Route::any('upload', 'CommonController@upload');
});