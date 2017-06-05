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
        <div class="terms-text">
            <p>{#thanks#}</p>
            <ul>
                <li>
                    <p>{#claim#}</p>
                </li>
            </ul>

            <p>{#bet#}</p>


        </div>
    </div>
    <div class="row">
        <div class="col-sm-12 text-gray text-center">
            <p>Payment Methods </p>
            <img src="src/img/betfirst/all_footer.png" alt="payment icons" class="hidden-xs img-responsive  center-block" style="width: 800px; margin-top:5px;">
            <img src="src/img/betfirst/footer.png" alt="payment icons" class="visible-xs img-responsive center-block" style="width: 800px; margin-top:5px;">
        </div>


    </div>

<div class="row">

    <div class="center-block">
        <div class="col-sm-12 text-gray" style="margin-left:auto; margin-right:auto; color:#CCCCCC;">
            <div class="sprite commission vc" style="background-image: url('src/img/betfirst/payment.png');"></div>
            <p class="vc">
                {#authorised#}
            </p>
            <br class="visible-xs">
            <div class="sprite responsible18 vc" style="background-image: url('src/img/betfirst/payment.png');"></div>
            <p class="vc">
                {#sagevas#}
            </p>
            <div class="sprite klineik-fr vc" style="background-image: url('src/img/betfirst/payment.png');"></div>
        </div>
    </div>
</div>
<div class="row hidden-xs">
    <center>
        <div class="col-md-10 col-md-offset-1 text-gray">
            <p>
                {#forbids#}
            </p>
        </div>
    </center>
</div>