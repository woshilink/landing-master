<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| HTML5 Banner  Routes
|--------------------------------------------------------------------------
*/

$app->get('/{product}/{size}/{lang}', 'Html5Controller@index');

