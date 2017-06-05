<?php

namespace App\Http\Controllers\Admin;

use App\Models\User;
use App\Models\Template;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
use Illuminate\Support\Facades\Gate;


class adminController extends Controller
{

    public function __construct()
    {

    }
    public function system(Request $request){
        $view = 'pages.admin.index';
        $user = User::where("api_token", "=", $request->input('use'))
            ->first();


        return view($view,[
            'user' => $user,
        ]);
    }


    public function dashboard(Template $template,Request $request){

        $view = 'pages.admin.dashboard.index';

        $user = User::where("api_token", "=", $request->input('use'))
            ->first();

        $pages = $template->pages();
        $list = $template->getTemplatesByDomain('netbetcom');

        $notAppgeList = '';

        foreach ($pages as $key => $apage){
            $pages[$key]['avaliable'] = $template->isTemplate(str_replace(".", "", $apage['brand']),$apage['product'], $apage['lp']);

        }

        $notApproveTemplates = $template->getNotApproveTemplates();
//        echo '<pre>';
//        var_dump($template->notApproveList());
//        echo '</pre>';
//        die();
        if($user){
            return view($view,[
                'pages' => $pages,
                'user' => $user,
                'page' => 'dashboard',
                'notApproveTemplates' => $notApproveTemplates
            ]);
        }

        return abort(404);
    }

    public function portforlio(Template $template, Request $request){
        $view = 'pages.admin.portforlio.index';

        $user = User::where("api_token", "=", $request->input('use'))
            ->first();

        $pages = $template->pages();
        $lists = [];
        $eachMonthList = [];
        foreach($pages as $key => $value){
            $lists[$key] =  date_parse($value['begin']);
            $lists[$key]['lp'] =  $value['lp'];
            $lists[$key]['brand'] =  $value['brand'];
            $lists[$key]['product'] =  $value['product'];
            $lists[$key]['link'] =  'https://go.'.$value['brand'].'/'.$value['product'].'/?lp='.$value['lp'];
        }

        foreach ($lists as $key => $value){
            $eachMonthList[$value['year']][$value['month']][] = $value['lp'];
        }
//                echo '<pre>';
//        var_dump($eachMonthList);
//        echo '</pre>';
//        die();
        if($user){
            return view($view,[

                'user' => $user,
                'page' => 'portforlio',
                'lists' => $lists

            ]);
        }

        return abort(404);
    }

    public function html5Templates(Html5 $html5, Request $request){

    }

    public function landingTemplates(Request $request, Template $templates){

        $view = 'pages/admin/templates/landing/index';

        $user = User::where("api_token", "=", $request->input('use'))
            ->first();

        if($user){
            return view($view,[
                'user' => $user,
                'page' => 'templates',
                'section' => 'landing',
            ]);
        }
        return abort(404);
    }





}