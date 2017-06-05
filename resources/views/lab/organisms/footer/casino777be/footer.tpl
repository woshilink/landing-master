{assign "lpconf" "{$smarty.current_dir}/{$lang}.conf"}
{config_load file=$lpconf}

<div class="row">
    <p  class="text-center" style="margin-top:1em;font-size:0.85em;color:#616161;">{#text#}</p>
    <img src="src/img/black-line.png" alt="divide" class="img-responsive" style="max-width: 1146px; margin-top:1em; margin-bottom:1em;">
</div>
<div id="payment" class="row">
    <div class="col-xs-12 col-sm-12  col-md-offset-5 col-md-7">
        <p id="legal" style="text-align:center;">
        </p><div class="col-xs-6 col-sm-3 col-md-3">
            <img class="img-responsive center-block" src="src/img/777/21plus-{$lang}.png" alt="21 Responsible gaming">
        </div>
        <div class="col-xs-6 col-sm-3 col-md-3">
            <img class="img-responsive center-block" src="src/img/777/Casino-Spa.png" alt="Casino de Spa">
        </div>

        <div class="col-xs-12 col-sm-6">
            <img class="img-responsive center-block" src="src/img/777/gaming-commission-{$lang}.png" alt="This site is authorised by the Belgian Gaming Commission">
        </div>

        <p></p>
    </div>
</div>