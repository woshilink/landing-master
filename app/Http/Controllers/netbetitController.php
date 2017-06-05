<?php

namespace App\Http\Controllers;

use App\Models\Landing;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;

class netbetitController extends Controller
{
    public function home(Request $request){
        if($request->input()){
            return redirect('https://www.netbet.it/?'.http_build_query($request->all()));
        }
        else{
            return redirect('https://www.netbet.it/');
        }

    }


    public function index( Request $request, $product, Landing $landing){

        $brand = 'netbet';
        $lang = $landing->setLang('it');
        $lp = $request->input('lp');
        $domain = $landing->getDomainKey();
        $defaultLp = $this->getDefaultLp($product);
        $template = $landing->getTemplate($domain, $product, $lp,$defaultLp );

        if(!$landing->isLp($domain, $product, $request->input('lp'))){
            return redirect(url('/').'/'.$product);
        }

        $var = $landing->getAllTemplateVariables( $brand, $domain, $product, $lang, $lp, $defaultLp,$request);
        return view($template, $var);
    }
    public function getDefaultLp($product)
    {
        $defaultList = [
            'sport' => 'tv-lander',
            'casino' => 'spin-now',
            'live' => 'live-casino',
            'sports-casino' => 'upsell'
        ];
        $default = $defaultList[$product];

        return $default;
    }


}
