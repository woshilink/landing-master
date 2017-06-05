<?php

namespace App\Http\Controllers\Liveodds;

use App\Models\Template;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class adminController extends Controller
{


    public function index(Template $template,Request $request){
        $template = 'pages/liveodds/admin/index/index';

        return view($template);
    }






}