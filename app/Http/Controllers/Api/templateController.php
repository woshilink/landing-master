<?php

namespace App\Http\Controllers\Api;


use App\Models\Template;
use App\Http\Controllers\Controller;


class templateController extends Controller
{

    public function getApproveListOrigin(Template $template){
        $list =  $template->pages();
        return $list;
    }

    public function getApproveLandingDateNest(Template $template){
        $templates = $template->getApproveTemplates();
        return $templates;

    }

    public function getAllUsedTemplates(Template $template){
        $templates = $template->getAllUsedTemplates();
        return $templates;

    }

    public function getAllSystemTemplates(Template $template){
        $templates = $template->getAllSystemTemplates();
        return $templates;
    }

    public function getTemplateStructure(Template $template){
        $strucure = $template->getTemplateTree();
        return $strucure;
    }

    public function getTemplateLanguages(Template $template){
        $strucure = $template->getLanguages();
        return $strucure;
    }
}