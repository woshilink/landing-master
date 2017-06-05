<?php

namespace App\Http\Controllers;


use App\Models\Landing;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;

class netbetcoukController extends Controller
{

    public function home(Request $request)
    {
        if ($request->input()) {
            return redirect('https://www.netbet.co.uk/?' . http_build_query($request->all()));
        } else {
            return redirect('https://www.netbet.co.uk/');
        }
    }


    /**
     * @param Request $request
     * @param $product
     * @param Landing $landing
     * @return View
     */
    public function index( Request $request, $product, Landing $landing){

        $lp = $request->input('lp');
        $lang = $landing->setLang('en-GB');
        $domain = $landing->getDomainKey();
        $defaultLp = $this->getDefaultLp($product);
        $template = $landing->getTemplate($domain, $product, $lp,$defaultLp );

        if(!$landing->isLp($domain, $product, $request->input('lp'))){
            return redirect(url('/').'/'.$product);
        }

        $var = $landing->getAllTemplateVariables('netbet', $domain, $product, $lang, $lp, $defaultLp,$request);

        $var['legal_txt'] =  '18+ | New Players Only | £10+ Deposit Required | 30x Wagering | T&Cs apply' ;

//        echo '<pre>';
//        var_dump($var);
//        echo '</pre>';
//        return null;

        return view($template, $var);
    }

    public function getDefaultLp($product)
    {
        $defaultList = [
            'sport' => 'all-sport',
            'casino' => 'tv-lander',
            'poker' => '15-free',
            'vegas' => 'cats',
            'live' => 'live-casino',
            'sports-casino' => '50free-200free'
        ];

        $default = $defaultList[$product];
        return $default;
    }



}