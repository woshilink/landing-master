<?php

namespace App\Http\Controllers;

use App\Models\Landing;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;

class liveoddsController extends Controller
{
    public function index( Request $request, Landing $landing){

        $lang = $landing->setLang($this->getCurrentLanguage($landing->getDomainKey()), $request->input('lang'));
        $lp = $request->input('lp');
        $domain = 'netbetcom';
        $realDomain = $landing->getDomainKey();

        $ctaUrl = $landing->getCtaUrl($request->input(), $domain, $lang);
        $cookieUrl = $landing->getCookieUrl($request->input(), $domain, $lang);
        $gtmId = $landing->getGtmId($domain);


        $logo_url = $landing->getCoLogo($domain,$request->input('logo'));


        $var = [
            'brand' => 'netbet',
            'gtm' => $gtmId,
            'domain' => $domain,
            'realDomain' => $realDomain,
            'cta' =>  $ctaUrl,
            'lang' => $lang,
            'cookies' => $cookieUrl,
            'co_logo' => $logo_url

        ];


        $sport = 'football';

        $domain = $landing->getDomainKey();

        return view('pages.landing.'.$domain.'.liveodds.football.template1.template', $var);
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
            case 'netbetca':
                $language = 'ca';
                break;
            default:
                $language = 'en';
        }
        return $language;
    }

}