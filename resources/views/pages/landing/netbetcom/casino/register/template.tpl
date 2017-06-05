{assign "lpconf" "{$smarty.current_dir}/{$lang}/lp.conf" }
{config_load file=$lpconf}

{include file="lab/templates/register-form-popup/template1.tpl"
    tc='pages/landing/'|cat:$domain|cat:'/terms/'|cat:$product|cat:'/welcome-offer/'|cat:$lang|cat:'/terms.tpl'
}