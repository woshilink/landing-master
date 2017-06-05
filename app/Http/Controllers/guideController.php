<?php

namespace App\Http\Controllers;

use App\Models\Landing;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;

class guideController extends Controller
{
    public function index( Request $request, $section, $page = 'home', Landing $landing){
        $view = 'pages.guide.'.$section.'.'.$page.'.index';


        if (View::exists($view)) {
            return view($view,[
                'section' => $section,
                'page' => $page
                ]);
        }


        return view('pages.guide.'.$section.'.index',[
            'section' => $section,
            'page' => $page,

        ]);
    }

}