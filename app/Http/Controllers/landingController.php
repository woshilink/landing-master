<?php

namespace App\Http\Controllers;

use App\Models\Landing;
use App\Models\Admin;
use App\Models\Page;
use Composer\Config;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;

class landingController extends Controller
{
    public function index( Request $request, Landing $landing ,Admin $admin){
        $view = 'pages.admin.list';

        $list = $admin->getAllLandingList();



        return view($view,[
            'list' => $list,

        ]);
    }

    public function dashboard( Request $request, Landing $landing ,Admin $admin, Page $page){
        $view = 'pages.admin.dashboard.index';

        $pages = $page->pages()->find(1);


        return view($view,[
            'pages' => $pages,

        ]);
    }

}