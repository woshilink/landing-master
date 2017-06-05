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
            background-image: url('{$asset}/{$lang}/bg.jpg');
        }
        .offscreen{
            position: absolute;
            margin-top: -5000px;
        }
        {if $lp=='sw150'}
        .co-logo img{
            max-width: 85px;
        }
        {elseif $lp == 'darts200'}
        .offer {
            margin-top: 20px;
        }
        .button{
            margin-top: 15px;
        }
        .main{
            height: 550px;
        }
        @media only screen and (max-width : 1200px) {

            .offer {
                margin-top: 0px;
            }
            .button{
                margin-top: 0px;
            }

        }
        {elseif $lp == 'nl200-2'}
        .offer {
            margin-top: 100px;
        }
        .button{
            margin-top: 0;
        }
        {/if}

    </style>
{/block}
{block name=body}
    <section id="main-nav">
        <nav class="navbar black-transparent ">
            <div class="container-fluid">
                {include file="lab/organisms/nav/nav-main.tpl" text=$text}
            </div>
        </nav>
    </section>
    <!-- end of NAV -->

    <a href="{$cta.sport}" rel="nofollow">
        <section class="mobile visible-xs">
            <img src="{$asset}/{$lang}/mobile.jpg" alt="" class="img-responsive center-block">
            <div class="button">
                {if $lang == 'nl'}
                    <div  class="CTA-button center-block">ZET IN</div>
                {else}
                    <div  class="CTA-button center-block">BET NOW</div>
                {/if}
            </div>
        </section>
        <section class="main hidden-xs">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-5 col-sm-4 col-md-4 col-lg-4  pull-right">
                        <div class="box">
                            <div class="offer " >
                                <img src="{$asset}/{$lang}/offer.png" alt="" class="img-responsive center-block">

                            </div>
                            <!-- end of offer row -->

                            <div class="button">
                                {if $lang == 'nl'}
                                    <div  class="CTA-button center-block">ZET IN</div>
                                {else}
                                    <div  class="CTA-button center-block">BET NOW</div>
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
                        <img src="{$asset}/{$lang}/steps.png" alt="" class="img-responsive center-block">
                    </div>
                </div>
                <!-- end of lage screen steps -->

                <div class="row">
                    <div class="col-xs-12 visible-xs">
                        <img src="{$asset}/{$lang}/steps_mobile.png" alt="" class="img-responsive center-block">
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
                <div class="col-xs-11 ">
                    <br>
                    <p class="pull-left ">
                        *<a href="#modal">
                            <span class="text-muted">Terms &amp; Conditions</span>

                        </a>
                    </p>



                </div>
            </div>
            {include file="lab/organisms/footer/footer-main.tpl"}
        </div>
    </section>

    <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
        <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
        <div>
            {include file="pages/landing/{$domain}/terms/sport/NETBET200/{$lang}/terms.tpl"}
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


