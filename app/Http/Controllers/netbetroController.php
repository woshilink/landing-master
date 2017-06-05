<?php

namespace App\Http\Controllers;

use App\Models\Landing;
use App\Models\Odds;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;

class netbetroController extends Controller
{

    public function home(Request $request){

        if($request->input()){
            return redirect('https://www.netbet.ro/?'.http_build_query($request->all()));
        }
        else{
            return redirect('https://www.netbet.ro/');
        }

    }

    public function index( Request $request, $product, Landing $landing){
        $brand = 'netbet';
        $lang = $landing->setLang('ro');
        $lp = $request->input('lp');
        $domain = $landing->getDomainKey();
        $defaultLp = $this->getDefaultLp($product);
        $template = $landing->getTemplate($domain, $product, $lp,$defaultLp );

        $prize = [
            'sport' => '1500'
        ];

        //if lp not exist redirect to default without showing lp value.
        if(!$landing->isLp($domain, $product, $request->input('lp'))){
            return redirect(url('/').'/'.$product);
        }

        $var = $landing->getAllTemplateVariables($brand, $domain, $product, $lang, $lp, $defaultLp, $request);
        $var['prize'] = $prize;


        return view($template, $var);
    }

    public function getDefaultLp($product)
    {
        $defaultList = [
            'sport' => 'tv-lander',
            'casino' => 'tv-lander',
            'poker' => 'play-poker',
            'vegas' => 'free10spins',
            'live' => 'live-cazino-dealeri',
            'sports-casino' => '50free-200free'
        ];
        $default = $defaultList[$product];
        return $default;
    }


}
