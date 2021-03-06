<?php

namespace App\Http\Controllers;

use App\Models\Landing;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;

class casino777beController extends Controller
{
    public function home(Request $request){

        if($request->input()){
            return redirect(url('/casino').'?'.http_build_query($request->all()));
        }
        else{
            return redirect(url('/casino'));
        }

    }

    public function index( Request $request, $product, Landing $landing){
        $brand = 'casino777';
        $lang = $landing->setLang('en', $request->input('lang'));
        $lp = $request->input('lp');
        $domain = $landing->getDomainKey();
        $defaultLp = $this->getDefaultLp($product);
        $approve = true;
        $template = $landing->getTemplate( $domain, $product, $lp, $defaultLp);


        //if lp not exist redirect to default without showing lp value.
        if(!$landing->isLp($domain, $product, $request->input('lp'))){
            return redirect(url('/').'/'.$product);
        }

        $var = $landing->getAllTemplateVariables($brand,$domain, $product, $lang, $lp, $defaultLp, $request);

        if (View::exists($template) && $approve == true) {
            return view($template, $var);
        }
        else{
            return view('pages.errors.404');
        }

    }
    public function getDefaultLp($product)
    {
        $defaultList = [
            'casino' => 'welcome-offer-alt',
        ];
        $default = $defaultList[$product];
        return $default;
    }

}
