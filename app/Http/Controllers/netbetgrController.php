<?php

namespace App\Http\Controllers;

use App\Models\Landing;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\View;

class netbetgrController extends Controller
{

    public function home(Request $request){
        if ($request->input()) {
            return redirect('https://www.netbet.gr/?' . http_build_query($request->all()));
        } else {
            return redirect('https://www.netbet.gr/');
        }

    }

    /**
     * @param Request $request
     * @param $product
     * @return View
     */
    public function index(Request $request, $product, Landing $landing){

        $brand = 'netbet';
        $lang = $landing->setLang('el');
        $lp = $request->input('lp');
        $domain = $landing->getDomainKey();
        $defaultLp = $this->getDefaultLp($product);
        $template = $landing->getTemplate($domain, $product, $lp,$defaultLp );
        $asset = $landing->getTemplateAsset($domain,$product,$lp, $defaultLp);
        $ctaUrl = $landing->getCtaUrl($request->input(), $domain, $lang);
        $cookieUrl = $landing->getCookieUrl($request->input(), $domain, $lang);
        $gtm = $landing->getGtmId($domain);
        $productNo = $landing->getProductNumber($domain)[$product];

        $legal_text = "+21, ΠΑΙΞΕ ΥΠΕΥΘΥΝΑ, WWW.KETHEA.GR, ΓΡΑΜΜΗ ΥΠΟΣΤΗΡΙΞΗΣ: 2109237777, ΑΡΜΟΔΙΑ ΑΡΧΗ ΑΔΕΙΟΔΟΤΗΣΗΣ MGA, ΚΙΝΔΥΝΟΣ ΕΘΙΣΜΟΥ ΚΑΙ ΑΠΩΛΕΙΑΣ ΠΕΡΙΟΥΣΙΑΣ";


        if(!$landing->isLp($domain, $product, $request->input('lp'))){
            return redirect(url('/').'/'.$product);
        }

        $var = $landing->getAllTemplateVariables( $brand, $domain, $product, $lang, $lp, $defaultLp,$request);

        $var ['legal_text']  = $legal_text;

        return view($template, $var);
    }

    public function getDefaultLp($product)
    {
        $defaultList = [
            'sport' => 'play-responsibly',
            'casino' => 'play-responsibly',

        ];
        $default = $defaultList[$product];


        return $default;
    }


}
