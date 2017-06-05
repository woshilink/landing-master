
{assign "lpconf" "{$smarty.current_dir}/{$lang}/lp.conf"}
{config_load file=$lpconf}

{include file="lab/templates/enhance/template1.tpl"
    countdownTimer='04/07/2017 13:02:00'

    local= '+1'
}
{* +1 for uk*}
{* +3 for Roman*}