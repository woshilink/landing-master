<?php

namespace App\Http\Controllers;

use App\Models\Landing;
use Faker\Provider\File;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\View;

class netbetcomController extends Controller
{
    public function home(Request $request){
        if($request->input()){
            return redirect('https://www.netbet.com/?'.http_build_query($request->all()));
        }
        else{
            return redirect('https://www.netbet.com/');
        }

    }

    public function index( Request $request, $product, Landing $landing){

        $lang = $landing->setLang($this->getCurrentLanguage($landing->getDomainKey()), $request->input('lang'));
        $lp = $request->input('lp');
        $domain = 'netbetcom';
        $realDomain = $landing->getDomainKey();
        $defaultLp = $this->getDefaultLp($realDomain,$product);
        $template = $landing->getTemplate($domain,$product,$lp, $defaultLp);


        //if lang == ja redirect to netbet.jp instead
        if($request->input('lang') == 'ja'){

            $redirectUrl = str_replace('com','jp',url('/'));

            $redirectUrl .= '/'.$product;
            if(!empty($request->except('lang'))){
                $redirectUrl .= '?'.http_build_query($request->except('lang'));
            }

            return redirect($redirectUrl);

        }elseif ($request->input('lang') == 'nl'){

            $redirectUrl = url('/').'/'.$product;
            $redirectUrl .= '?'.http_build_query($request->except('lang','lp'));

            return redirect($redirectUrl);

        }

        if(!$landing->isLp($domain, $product, $request->input('lp'))){
            return redirect(url('/').'/'.$product);
        }

        $var = $landing->getAllTemplateVariables('netbet',$domain, $product, $lang, $lp, $defaultLp,$request);

        $var['realDomain'] = $realDomain;

        return view($template, $var);

    }


    public function getDefaultLp($domain, $product)
    {
        $defaultList = [
            'netbetcom' => [
                'pt-BR'  => [
                    'sport' => 'tv-lander',
                    'casino' => 'spin-now',
                    'poker' => 'play-poker',
                    'vegas' => 'Welcome-offer',
                    'lotto' => 'lotto',
                    'live' => 'live-casino',
                    'sports-casino' => 'sport-casino'
                ],
                'sport' => 'tv-lander',
                'casino' => 'double-200',
                'poker' => 'play-poker',
                'vegas' => 'cats',
                'lotto' => 'lotto',
                'live' => 'live-casino',
                'sports-casino' => 'sport-casino'
            ],
            'netbetie' => [
                'sport' => 'tv-lander',
                'casino' => 'double-200',
                'poker' => 'play-poker',
                'vegas' => 'cats',
                'lotto' => 'lotto',
                'live' => 'live-casino',
                'sports-casino' => 'sport-casino'
            ],
            'netbetde' => [
                'sport' => 'tv-lander',
                'casino' => 'double-200',
                'poker' => 'play-poker',
                'vegas' => 'cats',
                'lotto' => 'lotto',
                'live' => 'live-casino',
                'sports-casino' => 'sport-casino'
            ],
            'netbetch' => [
                'sport' => 'tv-lander',
                'casino' => 'double-200',
                'poker' => 'play-poker',
                'vegas' => 'tv-lander',
                'lotto' => 'tv-lander',
                'live' => 'tv-lander',
                'sports-casino' => 'sport-casino'
            ],
            'netbetca' => [
                'sport' => 'tv-lander',
                'casino' => 'double-200',
                'poker' => 'play-poker',
                'vegas' => 'vegas-10freespins',
                'lotto' => 'lotto',
                'live' => 'live-casino',
                'sports-casino' => 'sport-casino'
            ],
            'netbetru' => [
                'sport' => 'tv-lander',
                'casino' => 'double-200',
                'poker' => 'play-poker',
                'vegas' => 'vegas-10freespins',
                'lotto' => 'lotto',
                'live' => 'live-casino',
                'sports-casino' => 'sport-casino'
            ]
        ];
        $default = $defaultList[$domain][$product];
        return $default;
    }

    public static function getCurrentLanguage($urlParam)
    {

        switch($urlParam) {
            case 'netbetcom':
                $language = 'en';
                break;
            case 'netbetie':
                $language = 'ie';
                break;
            case 'netbetru':
                $language = 'ru';
                break;
            case 'netbetde':
                $language = 'de';
                break;
            case 'netbetch':
                $language = 'ch-de';
                break;
            case 'netbetca':
                $language = 'ca';
                break;
            default:
                $language = 'en';
        }
        return $language;
    }

}