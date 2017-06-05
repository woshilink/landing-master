<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Template extends Model

{
    protected $templateTree = [
        0 => [
            'brand' => 'bet777.be',
            'product' => ['sport'],
        ],
        1 =>  [
            'brand' => 'betfirst.be',
            'product' => ['sport'],
        ],
        2 =>  [
            'brand' => 'casino777.be',
            'product' => ['casino'],
        ],
        3 =>  [
            'brand' => 'casino777.es',
            'product' => ['casino'],
        ],
        4 =>  [
            'brand' => 'netbet.com',
            'product' => ['casino','live','lotto','poker','sport','sports-casino','vegas'],
        ],
        5 =>  [
            'brand' => 'netbet.co.uk',
            'product' => ['casino','live','poker','sport','sports-casino','vegas'],
        ],
        6 =>  [
            'brand' => 'netbet.fr',
            'product' => ['sport'],
        ],
        7 =>  [
            'brand' => 'netbet.gr',
            'product' => ['casino','sport'],
        ],
        8 =>  [
            'brand' => 'netbet.it',
            'product' => ['casino','live','sport','sports-casino'],
        ],
        9 =>  [
            'brand' => 'netbet.jp',
            'product' => ['casino','sport','vegas'],
        ],
        10 =>  [
            'brand' => 'netbet.ro',
            'product' => ['casino','live','poker','sport','vegas'],
        ],

    ];
    public function  getTemplateTree(){
        return $this->templateTree;
    }
    /**
     * @return mixed
     */
    public function pages()
    {

        $username = 'landings';
        $password = '#6sESf$$R867{ysD';

        $url = 'https://admingo.livepartners.com/admin/landings2-json-new.php';

        $context = stream_context_create(array(
            'http' => array(
                'header' => 'Authorization: Basic ' . base64_encode("$username:$password")
            )
        ));
        $data = file_get_contents($url, false, $context);

        $return = json_decode($data, true);

        return $return;

    }
    public function getLanguages()
    {
        $username = '';
        $password = '';
        $url = 'https://admin.livepartners.com/api/bannerflow/brand_detail/?data=eyJhcGkiOnsia2V5IjoibTBlNjU5d3I1bTRtam5ycHk3c3U4cXdqaGFlZWR6N2gifX0';
        $context = stream_context_create(array(
            'http' => array(
                'header' => 'Authorization: Basic ' . base64_encode("$username:$password")
            )
        ));
        $data = file_get_contents($url, false, $context);
        $return = json_decode($data, true);

        return $return;

    }


    public function getAllTemplateList(){


        $main_dir = resource_path('views/pages/landing');

        $result = $this->listFolderFiles($main_dir);


        return  $result;
    }

    public function getTemplatesByDomain($domain){
        $main_dir = resource_path('views/pages/landing/'.$domain);

        $result = $this->listFolderFiles($main_dir);

        return  $result;
    }

    /**
     * @param $domain
     * @param $product
     * @param $lp
     * @param string $lang
     * @return bool
     */
    public function isTemplate($domain, $product, $lp, $lang =''){

        $template = resource_path('views/pages/landing/'.$domain.'/'.$product.'/'.$lp.'/template.tpl');
        if(file_exists($template)){
            return true;
        }
        return false;
    }

    public function getAllUsedTemplates(){
        $systemTemplates = [];

        $langguage = $this->getLanguages();
        foreach ($this->templateTree as $key => $landing) {
            $url = url('/');
            $parse = parse_url($url);
            $server =  explode('.', $parse['host']);
            $startLink = $parse['scheme'].'://'.$server[0].'.';

            foreach ($landing['product'] as $productKey => $product) {
                $dir = resource_path('views/pages/landing/' . str_replace('.', '', $landing['brand']) . '/' . $product);
                $lpList = scandir($dir);

                if($parse['port']){
                    $link = $startLink.$landing['brand'].':'.$parse['port'].'/'.$product;
                }else{
                    $link = $startLink.$landing['brand'].'/'.$product;
                }

                foreach ($lpList as $key => $lp) {

                    $inLp = scandir($dir . '/' . $lp);
                     $langList = [];
                    foreach ($inLp as $file){

                        if(file_exists($dir. '/' . $lp.'/'.$file.'/lp.conf') ){
                            array_push($langList,$file);
                        }
                    }
                    $langList = array_diff($langList, array('.', '..'));

                    if ($lp != '.' && $lp != '..'  ) {
                        if(!$langList){
                            array_push($systemTemplates,[
                                'brand' => $landing['brand'],
                                'domain' => str_replace('.', '', $landing['brand']),
                                'product' => $product,
                                'lp' => $lp,
                                'approved' => false,
                                'link' => $link.'?lp='.$lp,
                                'languages' => 'default lang'
                            ] );
                        }
                        else{
                            array_push($systemTemplates,[
                                'brand' => $landing['brand'],
                                'domain' => str_replace('.', '', $landing['brand']),
                                'product' => $product,
                                'lp' => $lp,
                                'approved' => false,
                                'link' => $link.'?lp='.$lp,
                                'languages' => $langList
                            ] );
                        }

                    }



                }



            }
        }
        return $systemTemplates;
    }

    public function getAllSystemTemplates(){

        $systemTemplates = [];
        $pages = $this->pages();

        foreach ($this->templateTree as $key => $landing) {
            $url = url('/');
            $parse = parse_url($url);
            $server =  explode('.', $parse['host']);
            $startLink = $parse['scheme'].'://'.$server[0].'.';

            foreach ($landing['product'] as $productKey => $product) {

                $dir = resource_path('views/pages/landing/' . str_replace('.', '', $landing['brand']) . '/' . $product);
                $lpList = scandir($dir);

                if($parse['port']){
                    $link = $startLink.$landing['brand'].':'.$parse['port'].'/'.$product;
                }else{
                    $link = $startLink.$landing['brand'].'/'.$product;
                }
                foreach ($lpList as $lp) {

                    if ($lp != '.' && $lp != '..') {
                        $systemTemplates[] = [
                            'brand' => $landing['brand'],
                            'domain' => str_replace('.', '', $landing['brand']),
                            'product' => $product,
                            'lp' => $lp,
                            'approved' => false,
                            'link' => $link.'?lp='.$lp,
                        ];
                    }
                }
            }
        }

        foreach ($systemTemplates as $key => $template) {

            foreach ($pages as $k =>  $page){

                if( $page['brand'] == $template['brand'] && $page['product'] == $template['product'] && $page['lp'] == $template['lp']){
                    $systemTemplates[$key]['approved'] = true;
                    $systemTemplates[$key]['startTime'] = date_parse($page['begin']);
                    $dateObj   = \DateTime::createFromFormat('!m',  $systemTemplates[$key]['startTime']['month'] );
                    $systemTemplates[$key]['startTime']['month'] = $dateObj->format('F');
                }
                elseif ($page['brand'] == 'netbet.com'&& $page['language'] == 'de-DE' && file_exists(resource_path('views/pages/landing/netbetcom/' . $template['product'].'/'.$template['lp'].'/de/lp.conf')) == true){

                    $systemTemplates[$key]['approved'] = true;
                    $systemTemplates[$key]['startTime'] = date_parse($page['begin']);
                    $dateObj   = \DateTime::createFromFormat('!m',  $systemTemplates[$key]['startTime']['month'] );
                    $systemTemplates[$key]['startTime']['month'] = $dateObj->format('F');

                }
            }
        }
        return $systemTemplates;
    }
    /**
     * @return array
     */
    public function getNotApproveTemplates(){
        $notApprovePage = [];
        $systemTemplates = $this->getAllSystemTemplates();

        foreach ($systemTemplates as $skey => $svalue){
            if(!$svalue['approved']){
                $notApprovePage[] = $systemTemplates[$skey];
            }
        }


        return $notApprovePage;
    }

    public function getApproveTemplates(){
        $ApprovePage = [];
        $systemTemplates = $this->getAllSystemTemplates();

        foreach ($systemTemplates as $skey => $svalue){
            if($svalue['approved']){
                $ApprovePage[] = $systemTemplates[$skey];
            }
        }

        return $ApprovePage;
    }

    public function listFolderFiles($dir) {
        $arr = array();
        $ffs = scandir($dir);

        foreach($ffs as $ff) {
            if( $ff != '.' && $ff != '..' && $ff != 'partials' && $ff != 'terms' ) {

                if(is_dir($dir.'/'.$ff)) {
                    $arr[$ff] = $this->listFolderFiles($dir.'/'.$ff);
                }elseif(!is_dir($dir.'/'.$ff) ){

                }
            }
        }

        return $arr;
    }

}

