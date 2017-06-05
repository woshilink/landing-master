<?php

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

$app->get('/odds/{sport}/{oddsStyle}', 'liveoddsController@index');

$app->get('/landing/approve/all', 'landingController@show');


$app->get('/templates/approved', 'templateController@getApproveLandingDateNest');
$app->get('/templates/approvedlist', 'templateController@getApproveListOrigin');
$app->get('/templates/structure', 'templateController@getTemplateStructure');
$app->get('/templates/all', 'templateController@getAllSystemTemplates');
$app->get('/templates/used', 'templateController@getAllUsedTemplates');
$app->get('/templates/unused', 'templateController@getAllUnusedTemplates');
$app->get('/templates/langauges', 'templateController@getTemplateLanguages');


