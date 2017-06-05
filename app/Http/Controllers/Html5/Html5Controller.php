<?php

namespace App\Http\Controllers\Html5;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Landing;

class Html5Controller extends Controller
{

    public function index( Request $request, $product, $size,  $lang, Landing $landing){

        $domain = $landing->getDomainKey();

        $cta = $landing->getCtaUrlByProduct($request->input(), $domain,$lang,$product);
        $campName = $request->input('camp');

        $template = 'pages.html5.'.$domain.'.'.$product.'.'.$campName.'.'.$size.'.'.$lang.'.'.'.template';

        $var = [
          'cta' => $cta
        ];

        return view($template, $var);
    }

}
