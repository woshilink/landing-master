<?php

namespace App\Http\Controllers;

use App\Models\Landing;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;

class netbetfrController extends Controller
{

    public function home(Request $request){
        if($request->input()){
            return redirect('https://www.netbet.fr/?'.http_build_query($request->all()));
        }
        else{
            return redirect('https://www.netbet.fr/');
        }

    }

    public function index( Request $request, $product, Landing $landing){


        $lang = $landing->setLang('fr');
        $lp = $request->input('lp');
        $domain = $landing->getDomainKey();
        $defaultLp = $this->getDefaultLp($product);
        $template = $landing->getTemplate($domain, $product, $lp,$defaultLp );

        if(!$landing->isLp($domain, $product, $request->input('lp'))){
            return redirect(url('/').'/'.$product);
        }

        $var = $landing->getAllTemplateVariables('netbet',$domain, $product, $lang, $lp, $defaultLp,$request);

        $var['legal_text'] = 'Jouer comporte des risques : endettement, dépendance… Appelez le 09-74-75-13-13 (appel non surtaxé).';
        $var['prize'] = '100';

        return view($template, $var);

    }

    public function getDefaultLp($product)
    {
        $defaultList = [
            'sport' => 'tv-lander',

        ];
        $default = $defaultList[$product];

        return $default;
    }


}
