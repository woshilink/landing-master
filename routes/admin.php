<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| Amin Routes
|--------------------------------------------------------------------------
|
| Here is where you can register Admin routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "auth" middleware group. Enjoy building your Admin!
|
*/


$app->group(['middleware' => 'authToken'], function () use ($app) {

});

//Admin
$app->get('/system', [
    'as' => 'admin.system',
    'uses' => 'adminController@system'
]);


$app->get('/dashboard', [
    'as' => 'admin.dashboard',
    'uses' => 'adminController@dashboard'
]);
$app->get('/portforlio', [
    'as' => 'admin.portforlio',
    'uses' => 'adminController@portforlio'
]);
$app->get('/html5', [
    'as' => 'admin.templates.html5',
    'uses' => 'adminController@html5'
]);

$app->get('/templates/landing', [
    'as' => 'admin.templates.landing',
    'uses' => 'adminController@landingTemplates'
]);


//Login
$app->get('/login', [
    'as' => 'admin.login', 'uses' => 'Auth\loginController@showLoginPage'
]);
$app->post('/auth/login',  'Auth\loginController@login');





