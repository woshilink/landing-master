<?php

namespace App\Http\Controllers;


use App\Models\Landing;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;

class netbetjpController extends Controller
{
    public function home(Request $request){
        if($request->input()){
            return redirect('https://casino.netbet.com/ja/?'.http_build_query($request->all()));
        }
        else{
            return redirect('https://casino.netbet.com/ja/');
        }
    }

    /**
     * @param Request $request
     * @param $product
     * @param Landing $landing
     * @return View
     */
    public function index( Request $request, $product, Landing $landing){
        $brand = 'netbet';
        $lang = $landing->setLang('ja');
        $lp = $request->input('lp');
        $domain = $landing->getDomainKey();
        $defaultLp = $this->getDefaultLp($product);
        $template = $landing->getTemplate($domain, $product, $lp,$defaultLp );


        if(!$landing->isLp($domain, $product, $request->input('lp'))){
            return redirect(url('/').'/'.$product);
        }
        $var = $landing->getAllTemplateVariables($brand,$domain, $product, $lang, $lp, $defaultLp, $request);

        return view($template, $var);

    }
    public function getDefaultLp($product)
    {
        $defaultList = [
            'sport' => 'all-sport',
            'casino' => '200double-offer',
            'vegas' => 'cats',
        ];

        $default = $defaultList[$product];
        return $default;
    }





}