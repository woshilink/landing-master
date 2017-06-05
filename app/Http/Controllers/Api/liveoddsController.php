<?php

namespace app\Http\Controllers\Api;


use App\Http\Controllers\Controller;
use App\Models\Odds;


class liveoddsController extends Controller
{
    public function index($sport, $oddsStyle, Odds $odds){
        $feeds = $odds->getFeedsTypeJSON($sport,$oddsStyle);

        return $feeds;
    }
}