<?php

namespace App\Http\Controllers\Api;


use App\Models\Admin;
use App\Http\Controllers\Controller;


class landingController extends Controller
{


    public function show(Admin $admin){
        $feed = $admin->getApproveList();

        return $feed;
    }

    public function getApproveLandingDateNest(){

    }
}