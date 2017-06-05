<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\URL;
use Illuminate\Support\Facades\View;

class Landing extends Model{

    private $gtmId = [
        'netbetro' => 'GTM-T96S3P',
        'netbetcom' => 'GTM-T96S3P',
        'netbetcouk' => 'GTM-T96S3P',
        'netbetgr' => 'GTM-T96S3P',
        'netbetit' => 'GTM-PMT9QK',
        'casino777be' => 'GTM-PCQ5JW',
        'betfirstbe' => 'GTM-TXLHKF',
        'casino777es' => 'GTM-W8TSSC',
        'bet777be' => 'GTM-N99LN7',
        'netbetjp' => 'GTM-T96S3P',
        'netbetfr' => 'GTM-KR62BW'
    ];

    private $itProductNumber = [
        'casino'=> '6',
        'live' => '6',
        'sport' => '3',
        'sports-casino' => '3'
    ];
    private $betfirstProductNumber =[
        'sport' => '10'
    ];
    private $frProductNumber  =[
        'sport' => '5'
    ];
    private  $casino777ProductNumber  =[
        'casino' => '9'
    ];
    private  $casino777esProductNumber  =[
        'casino' => '155'
    ];
    private $globalProductNumber = [
        'casino'=> '120',
        'live' => '124',
        'sport' => '126',
        'sports-casino' => '126',
        'vegas' => '125',
        'poker' => '121',
        'lotto' => '152'
    ];

    public function getBrand(){
        $url = URL::to('/');
        $parse = parse_url($url);
        $domain = explode('.', $parse['host']);
        array_shift($domain);
        array_pop($domain);
        $domain = implode($domain);
        return $domain;
    }

    /**
     * @param $domain
     * @param $product
     * @param $lp
     * @return bool
     */

    public function isLp($domain, $product, $lp){

        $template = 'pages.landing.'.$domain.'.'.$product.'.'.$lp.'.template';

        if ( View::exists($template) || empty($lp) ) {
            return true;
        }else{
            return false;
        }

    }

    /**
     * @param $defaultLp
     * @param $domain
     * @param $product
     * @return string
     */
    public function getDefaultLpTemplate($defaultLp, $domain, $product){
        return  'pages.landing.'.$domain.'.'.$product.'.'.$defaultLp.'.template';
    }

    /**
     * @param $domain
     * @return int|mixed
     */
    public function getProductNumber($domain){
        $number = [];

        if ($domain == 'netbetit'){
            $productsNumbers = $this->itProductNumber;
        }elseif($domain == 'netbetfr'){
            $productsNumbers = $this->frProductNumber;
        }elseif($domain == 'betfirstbe'){
            $productsNumbers = $this->betfirstProductNumber;
        }elseif($domain == 'casino777be'){
            $productsNumbers = $this->casino777ProductNumber;
        }
        elseif($domain == 'casino777es'){
            $productsNumbers = $this->casino777esProductNumber;
        }
        else{
            $productsNumbers = $this->globalProductNumber;
        }

        foreach ($productsNumbers as $productName => $productNumber){
            $number[$productName] = $productNumber;
        }
        return $number;
    }

    /**
     * @param $urlParam
     * @return string
     */
    public static function getCurrentLanguage($urlParam)
    {
        switch($urlParam) {
            case 'netbetcouk':
                $language = 'en-GB';
                break;
            case 'netbetie':
                $language = 'ie';
                break;
            case 'netbetde':
                $language = 'de';
                break;
            case 'netbetch':
                $language = 'de';
                break;
            case 'netbetgr':
                $language = 'el';
                break;
            default:
                $language = 'en';
        }
        return $language;
    }
    /**
     *
     */
    public static function getStaticBrand(){
        $url = URL::to('/');
        $parse = parse_url($url);
        $domain = explode('.', $parse['host']);
        array_shift($domain);
        array_pop($domain);
        $domain = implode($domain);
        return $domain;
    }
    /**
     * @return array|string
     */
    public function getDomainKey(){
        $url = URL::to('/');
        $parse = parse_url($url);
        $domain = explode('.', $parse['host']);
        array_shift($domain);
        $domain = implode($domain);
        return $domain;
    }
    public static function  getStaticDomainKey(){
        $url = URL::to('/');
        $parse = parse_url($url);
        $domain = explode('.', $parse['host']);
        array_shift($domain);
        $domain = implode($domain);

        switch($domain) {

            case 'netbetie':
                $domain = 'netbetcom';
                break;
            case 'netbetde':
                $domain = 'netbetcom';
                break;
            case 'netbetch':
                $domain = 'netbetcom';
                break;
            default:
                $domain = 'netbetcom';
        }
        return $domain;
    }



    /**
     * @param $domain
     * @param $product
     * @param $lp
     * @param $defaultLp
     * @return string
     */
    public function getTemplate($domain, $product, $lp, $defaultLp){

        $template = 'pages.landing.'.$domain.'.'.$product.'.'.$lp.'.template';

        if (View::exists($template)) {
            return $template;
        }

       return 'pages.landing.'.$domain.'.'.$product.'.'.$defaultLp.'.template';

    }

    /**
     * @param $domain
     * @param $product
     * @param $lp
     * @param $defaultLp
     * @return string
     */
    public function getTemplateAsset($domain, $product, $lp, $defaultLp){

        $approve = true;
        $template = 'pages.landing.'.$domain.'.'.$product.'.'.$lp.'.template';

        if (View::exists($template) && $approve == true) {

            return 'lp-asset/'.$domain.'/'.$product.'/'.$lp;
        }
        return 'lp-asset/'.$domain.'/'.$product.'/'.$defaultLp;

    }

    /**
     * @return mixed
     */
    public function getApproveLandingJson(){


//        $content = file_get_contents('http://admingo.livepartners.com/admin/landings-json.php');
        $url = 'https://admingo.livepartners.com/admin/landings2-json-new.php';
        $username = 'landings';
        $password = '#6sESf$$R867{ysD';
        // $fname = 'http://admingo.livepartners.com/admin/landings-json.php';
//        $json = json_decode($content, true);


        $ch = curl_init($url);

        // Configuring curl options
        $options = array(
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_USERPWD => $username . ":" . $password,  // authentication
            CURLOPT_HTTPHEADER => array('Content-type: application/json') ,

            );
        // Setting curl options
        curl_setopt_array( $ch, $options );

//        curl_setopt($ch,CURLOPT_URL,'http://admingo.livepartners.com/admin/landings-json.php');
//        curl_setopt($ch, CURLOPT_POST, 1);
//        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
//        curl_setopt($ch, CURLOPT_USERPWD, "$username:$password");

        // Getting results
        $output = curl_exec($ch); // Getting jSON result string
        curl_close($ch);


        $json = json_decode($output);

        return $json;
    }


    /**
     * @param $get
     * @param $domain
     * @param $lang
     * @return string
     */
    public  function getCookieUrl($get, $domain, $lang){
        $postfix = '&source=landing';
        foreach ($get as $key => $data){
            if($key != 'ck' && $key != 'source' && $key != 'lang' && $key != 't' && $key != 'bid2land' && $key != 'lp') {
                $postfix .= '&'.$key.'='.$data;
            }
        }
        if (!empty($get['ck']) &&$get['ck'] == 'yes') {
            $url = 'https://cookies.livepartners.com/?lpsite='.$domain.$postfix.'&lang='.$lang.'&tag=a_4139b_2';
        }elseif(!empty($get['ck']) && $get['ck'] == 'over'){
            $url= 'https://cookies.livepartners.com/?lpsite='.$domain.$postfix.'&lang='.$lang.'&tag=a_4139b_2&ck=over';
        } else{
            $url = '';
        }
        return $url;
    }

    /**
     * @param $get
     * @param $domain
     * @return string
     */
    public function getCtaUrl($get, $domain, $lang){
        $url = [];
        $postfix = '';
        //Redirection target
        $t = 'register';

        if ($domain == 'netbetgr'){

            $urlStart = 'https://banners.netbet.gr/click.php?l='.$lang;
        }elseif ($domain == 'netbetfr'){

            $urlStart = 'http://www.livepartners.fr/affiliate/tracking/click/?l='.$lang;
        }
        else{
            $urlStart = 'https://banners.livepartners.com/click.php?l='.$lang;
        }

        //Product number
        $p = $this->getProductNumber($domain);

        foreach ($p as $productName => $productNumber) {

            //ini url
            $url[$productName] = $urlStart;
            //add product number in parameter
            $url[$productName] .= '&p=' . $productNumber;
            foreach ($get as $key => $data) {

                if (isset($data) && !empty($data) && preg_match("/^[a-z0-9\-%\_\[\]]+$/i", $data)) {
                    if ($key == 'lang') {
                        $lang = $data;
                        $url[$productName] .= '&lang=' . $lang;
                    } elseif ($key == 't') {
                        $t = $data;
                    } elseif ($key == 'id' || $key == 'idaffiliation') {
                        $id = $data;
                        $url[$productName] .= '&id=' . $id;
                    } elseif ($key != 'ck' && $key != 'lang' && $key != 't' && $key != 'bid2land' && $key != 'lp') {
                        $postfix .= '&' . $key . '=' . $data;

                    }
                }
            }
            $url[$productName] .= $postfix;
            $url[$productName] .= '&t='.$t;
            $postfix = '';
        }

        return $url;
    }

    /**
     * @param $get
     * @param $domain
     * @param $lang
     * @param $product
     * @return mixed
     */
    public function getCtaUrlByProduct($get, $domain, $lang, $product){
        $allCta = $this->getCtaUrl($get, $domain, $lang);


        return $allCta[$product];
    }



    /**
     * @param string $default
     * @param string $new
     * @return string
     * @internal param $default_lang
     * @internal param $default
     */
    public  function setLang($default, $new = ''){

        if(!empty($new) && $new !== $default){
            return  $new;
        }else{
            return $default;
        }

    }

    /**
     * @param $domain
     * @return mixed
     */
    public function getGtmId($domain){
        return $this->gtmId[$domain];
    }

    /**
     * @param $url
     * @param $domain
     * @param $logoName
     * @return string
     */

    public function getCoLogo($domain, $logoName, $product){

        $result = url('lp-asset') .'/'.$domain.'/cologo/'.$product.'/'. $logoName.'.png';

        if (!file_exists('lp-asset/'.$domain.'/cologo/'.$product.'/'.$logoName.'.png')){
            $result = '';
        }

        return $result;
    }

    /**
     * @param $brand
     * @param $domain
     * @param $product
     * @param $lang
     * @param $lp
     * @param $defaultLp
     * @param $request
     * @return array
     * @internal param $newLang
     */
    public function getAllTemplateVariables($brand, $domain, $product, $lang , $lp, $defaultLp, $request){

        $productNo = $this->getProductNumber($domain)[$product];
        $asset = $this->getTemplateAsset($domain,$product,$lp, $defaultLp);
        $ctaUrl = $this->getCtaUrl($request->input(), $domain, $lang);
        $cookieUrl = $this->getCookieUrl($request->input(), $domain, $lang);
        $gtm = $this->getGtmId($domain);

        $logo_url = $this->getCoLogo($domain, $request->input('logo'), $product);
        $existing = $request->input('ex');

        return [
            'lang' => $lang,
            'productNo' => $productNo,
            'text' => $request->input('text'),
            'brand' => $brand,
            'lp' => $lp,
            'product' => $product,
            'domain' => $domain,
            'asset' => $asset,
            'cta' =>  $ctaUrl,
            'cookies' => $cookieUrl,
            'gtm' => $gtm,
            'co_logo' => $logo_url,
            'existing' => $existing,
            'url_input' => http_build_query($request->input())
        ];
    }




}