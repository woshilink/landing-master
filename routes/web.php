<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/
$domain = $_SERVER['HTTP_HOST'];
$domain = str_replace(":8880","",$domain);
$domain = explode('.', $domain);
array_shift($domain);
$domain = implode($domain);

switch($domain) {
    case 'netbetie':
        $domain = 'netbetcom';
        break;
    case 'netbetde':
        $domain = 'netbetcom';
        break;
    case 'netbetru':
        $domain = 'netbetcom';
        break;
    case 'netbetca':
        $domain = 'netbetcom';
        break;
    case 'netbetch':
        $domain = 'netbetcom';
        break;
}

$app->get('/',  $domain.'Controller@home');

$app->get('/{product}/',  $domain.'Controller@index');

//controller in a
$app->get('/guide/{section}/{page}', 'guideController@index');

$app->get('/landing/home', [
    'as' => 'home', 'uses' => 'landingController@index'
] );


//live odds landing
$app->get('/liveodds/football',  'liveoddsController@index');


