 <div class="row">

        <div id="logo" class="col-xs-6 col-sm-4 ">
            <a href="{$link}">

                {if $brand == 'betfirst'}
                <img src="src/img/{$brand}/logo-{$lang}.png" alt="{$brand}" class="pull-left img-responsive" >
                {else}
                <img src="src/img/{$brand}/logo.png" alt="{$brand}" class="pull-left img-responsive" >
                {/if}
            </a>
        </div>





    {if $nav_logo_mid == true}
        {if !empty($co_logo)}

        <div class="col-xs-6 col-sm-4 co-logo">
            <img src="{$co_logo}" class="img-responsive center-block" alt="">
        </div>
        <!-- end of co logo -->
        {/if}
    {elseif $domain == 'netbetfr' && !$text && $nav_logo_mid == false}
        <div class="col-xs-12 col-sm-5 text-center promo">
            <img src="src/img/device.png" alt="NetBetSport.fr" class=" hidden-xs" >
        </div>
    {else}
        <div class="col-xs-4 text-center hidden-xs custom-text">
            <h4 >{$text}</h4>
        </div>
        <!-- Co logo -->
    {/if}




    {if $existing == 1}

        <div class="col-xs-6 col-sm-4 co-logo">
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-login pull-right" data-toggle="modal" data-target="#login-modal">
                {$login|default:'Log In'}
            </button>

        </div>
        <!-- end of co logo -->

    {else}
        {if !empty($co_logo) && $nav_logo_mid == false}

            <div class="col-xs-6 col-sm-4 co-logo">
                <img src="{$co_logo}" class="img-responsive center-block" alt="">
            </div>
            <!-- end of co logo -->
        {elseif $domain == 'netbetfr' && !$co_logo }
            <div class="col-xs-12 col-sm-3 logo">
                <p class="text-center">NOS PARTENAIRES</p>
                <img src="src/img/partner-logos.png" class="img-responsive center-block" alt="">
            </div>

        {elseif  $lang_dropdown == true && $lang_option == false && empty($co_logo) }
            <div class="col-xs-6 col-sm-4 pull-right ">
                <div class="lang-selector pull-right " style=" text-transform: uppercase;">
                    <div class="dropdown">
                        {include file="lab/molecules/nav/lang-selector/button-lang-select.tpl" languages=$languages }
                    </div>
                </div>
            </div>
        {elseif  $lang_option == true && $lang_dropdown == false && empty($co_logo) }
            <div class="col-xs-6 col-sm-4 pull-right ">

                {include file="lab/molecules/nav/lang-option/lang-option.tpl" languages=$languages }

            </div>
        {/if}
    {/if}


    <!-- end of NAV -->

</div>