{assign "lpconf" "{$smarty.current_dir}/config/{$lang}.conf"}
{if !file_exists($lpconf)}
    <div class="row">
        <div class="col-xs-12">
            <p class="bg-warning">OPS. No translation for {$lang} language</p>
        </div>
    </div>
{else}
{config_load file=$lpconf}
{/if}
<div class="row">
    <div class="col-sm-8 col-xs-12 footer-text grey-text">

        <p>{#tc#}</p>
        <p>© 2016, 777.be<img class="" href="#termsi18" src="src/img/777/18.png"></p>

    </div>
    <div class="col-sm-4 col-xs-12 sponsor-logos grey-text">
        <img id="gamingComishImg" src="src/img/777/gaming-commission-{$lang}.png" class="img-responsive  center-block">
    </div>
</div>