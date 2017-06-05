<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| Liveodds Routes
|--------------------------------------------------------------------------
|
*/

//Admin
$app->get('/admin', [
    'as' => 'liveodds.admin',
    'uses' => 'adminController@index'
]);



