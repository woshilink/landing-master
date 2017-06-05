{extends file="base/base.tpl"}
{block name=title}
    {$brand|capitalize} {$product|capitalize} {* Editable title of landing pages *}
{/block}
{block name=head}

    <link href="{$asset}/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/main.css">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">

    <style>
        .main {
            background-image: url('{$asset}/bg.jpg');
        }
        .offscreen{
            position: absolute;
            margin-top: -5000px;
        }

        {if $lp == 'plus-mobile'}
        .box {
            padding: 114px 0 96px 0;
            background-color: rgba(29, 28, 26, 0.76);
        }
        @media only screen and (max-width : 1200px) {

            .main{
                height: auto;
            }
            .box {
                padding: 0px 0 1px 0;
                background-color: rgba(29, 28, 26, 0.76);
            }
        }
        {elseif $lp == '50plus10'}
        .box{
            padding: 0px;
        }
        .offer img{
            width: 217px;
        }
        {/if}
    </style>
{/block}
{block name=body}
    {assign "lpconf" "{$smarty.current_dir}/{$lang}/lp.conf"}
    {config_load file=$lpconf}
    <section id="main-nav">
        <nav class="navbar black-transparent">
            <div class="container-fluid">
                {include file="lab/organisms/nav/nav-main.tpl" text=$text link=$cta.sport}
            </div>
        </nav>
    </section>
    <!-- end of NAV -->

    <a href="{$cta.sport}" rel="nofollow">
        <section class="mobile visible-xs">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-12">
                        <img src="{$asset}/{$lang}/mobile.jpg" class="img-responsive center-block" alt="">
                        {if $lp == 'wetttipps-heute'}
                            <img src="{$asset}/{$lang}/mobile-logo.png" class="img-responsive center-block" alt="">
                        {/if}
                        <div class="button">
                            {if $lang == 'de'}
                                <div class="de">
                                    <div  class="CTA-button center-block">JETZT WETTEN</div>
                                </div>
                            {else}
                                <div class="en">
                                    <div  class="CTA-button center-block">BET NOW</div>
                                </div>

                            {/if}
                        </div>
                        <!-- end of button row -->
                    </div>
                </div>
            </div>
        </section>
        <!-- End of mobile section -->

        <section class="main hidden-xs">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-5 ">
                        <div class="info" >

                            <img src="{$asset}/{$lang}/info.png" class="img-responsive center-block" alt="">

                        </div>
                        <!-- end of offer row -->
                    </div>
                    <div class="col-xs-5 col-sm-4 col-md-4 col-lg-4  pull-right">
                        <div class="box">
                            <div class="offer " >

                                <img src="{$asset}/{$lang}/offer.png" class="img-responsive center-block" alt="">

                            </div>
                            <!-- end of offer row -->

                            <div class="button">
                                {if $lang == 'de'}
                                    <div class="de">
                                        <div  class="CTA-button center-block">JETZT WETTEN</div>
                                    </div>
                                {else}
                                    <div class="en">
                                        <div  class="CTA-button center-block">BET NOW</div>
                                    </div>

                                {/if}
                            </div>
                            <!-- end of button row -->

                        </div>

                    </div>
                </div>




            </div>
            <!-- end of main container -->

        </section>
    </a>
    <!-- end of main section -->

    <a href="{$cta.sport}" rel="nofollow">
        <section class="steps">
            <div class="container-fluid">
                <div class="row visible-xs">
                    <div class="text-center">
                        <h3>{$text}</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 hidden-xs">
                        {if $lang == 'ie'}
                            <img src="{$asset}/steps.png" alt="" class="img-responsive center-block">
                        {elseif $lp == '50plus10'}
                            <img src="{$lang}/img/steps-bonus.png" alt="" class="img-responsive center-block">
                        {else}
                            <img src="{$asset}/{$lang}/steps.png" alt="" class="img-responsive center-block">
                        {/if}
                    </div>
                </div>
                <!-- end of lage screen steps -->

                <div class="row">
                    <div class="col-xs-12 visible-xs">
                        {if $lang == 'ie'}
                            <img src="{$asset}/en/steps_mobile.png" alt="" class="img-responsive center-block">
                        {elseif $lp == '50plus10'}
                            <img src="{$lang}/img/steps_mobile-bonus.png" alt="" class="img-responsive center-block">
                        {else}
                            <img src="{$asset}/{$lang}/steps_mobile.png" alt="" class="img-responsive center-block">
                        {/if}
                    </div>
                </div>
                <!-- end of small sreen steps -->
            </div>

        </section>
    </a>
    <!-- end of steps section -->
    <section id="footer" class="bg-darkgrey">
        <div class="container-fluid">
            <div class="row terms">
                <div class="col-xs-11">
                    <br>
                    <p class="pull-left  terms">
                        *<a href="#modal">
                            <span class="text-muted">Terms &amp; Conditions</span>

                        </a>
                    </p>

                    <br>

                </div>
            </div>
            {include file="lab/organisms/footer/footer-main.tpl"
                responsible_text_header = #responsible_text_header#
                payment_text_header = #payment_text_header#
            }
        </div>
    </section>
    <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
        <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
        <div>
           {include file="pages/landing/{$domain}/terms/{$product}/welcome-offer/{$lang}/terms.tpl"}
        </div>
        <!-- loadind terms from terms from Jquery -->
        <br>
        <button data-remodal-action="confirm" class="remodal-confirm">OK</button>
    </div>
    <!-- end of modal pop up -->

{/block}
{block name=footer}
    <script src="src/js/remodal.min.js"></script>
{/block}

