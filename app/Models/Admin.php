<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\URL;
use Illuminate\Support\Facades\View;
use Faker\Provider\File;


class Admin extends Model{

    public function getAllLandingList(){

        $array =  array();
        $main_dir = resource_path('views/pages/landing');

        $result = $this->listFolderFiles($main_dir);


        return  $result;
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

    public function getApproveList(){

        $username = 'landings';
        $password = '#6sESf$$R867{ysD';

        $url= 'https://admingo.livepartners.com/admin/landings-json.php';

        $context = stream_context_create(array (
            'http' => array (
                'header' => 'Authorization: Basic ' . base64_encode("$username:$password")
            )
        ));
       $data = file_get_contents($url, false, $context);


        return $data;
    }

    public function getRealDomain($domainshortcut){
        switch($domainshortcut) {
            case 'netbetcom':
                $domain = 'netbet.com';
                break;
            case 'netbetie':
                $domain = 'netbet.ie';
                break;
            case 'netbetru':
                $domain = 'netbet.ru';
                break;
            case 'netbetde':
                $domain = 'netbet.de';
                break;
            case 'netbetca':
                $domain = 'netbet.ca';
                break;
            default:
                $domain = 'netbet.com';
        }

        return $domain;
    }

}