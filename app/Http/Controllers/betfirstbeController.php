<?php

namespace App\Http\Controllers;

use App\Models\Landing;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;

class betfirstbeController extends Controller
{
    public function home(Request $request){
        if($request->input()){
            return redirect(url('/sport').'?'.http_build_query($request->all()));
        }
        else{
            return redirect(url('/sport'));
        }
    }

    public function index( Request $request, $product, Landing $landing){
        $brand= 'betfirst';
        $lang = $landing->setLang('en', $request->input('lang'));
        $lp = $request->input('lp');
        $domain = $landing->getDomainKey();

        $defaultLp = $this->getDefaultLp($product);
        $template = $landing->getTemplate($domain, $product, $lp,$defaultLp );

        //if lp not exist redirect to default without showing lp value.
        if(!$landing->isLp($domain, $product, $request->input('lp'))){
            return redirect(url('/').'/'.$product);
        }

        $var = $landing->getAllTemplateVariables($brand,$domain, $product, $lang, $lp, $defaultLp, $request);

        if (View::exists($template) ) {
            return view($template, $var);
        }

    }

    public function getDefaultLp($product)
    {
        $defaultList = [
            'sport' => 'lucky-100',
        ];

        $default = $defaultList[$product];
        return $default;
    }


}
