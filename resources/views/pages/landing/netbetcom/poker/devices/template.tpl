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
        @font-face {
            font-family: Bebas Neue;
            src: url("src/fonts/BebasNeue.otf");
        }

        .main {
            background-image: url('{$asset}/bg.jpg');
        }
        @media only screen and (max-width : 768px) {
            .main {
                background-image: url('{$asset}/{$lang}/devices-mobile.jpg');
                background-size: 100% 100%;
            }
        }
        .offscreen{
            position: absolute;
            margin-top: -5000px;
        }

    </style>
{/block}
{block name=body}
    <section id="main-nav">
        <nav class="navbar black-transparent">
            <div class="container-fluid">
                {include file="lab/organisms/nav/nav-main.tpl" text=$text}
            </div>
        </nav>
    </section>
    <!-- end of NAV -->

    <a href="{$cta.poker}" rel="nofollow">
        <section class="main">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-7">
                        <div class="blue-text">
                            <img src="{$asset}/{$lang}/devices-blue.png" alt="NetBet" class="img-responsive" >
                        </div>
                    </div>
                    <div class="col-xs-5 col-sm-4 col-md-4 col-lg-4  pull-right">
                        <div class="box">
                            <div class="offer " >
                                {if $lp == 'devices'}
                                    <h1><span>&euro;20 FREE</span> </h1>
                                    <h1><span>Welcome BONUS</span></h1>
                                    <h1></h1>
                                {else }
                                    <h1>Free Play</h1>
                                    <h1>on Mobile</h1>

                                {/if}
                            </div>
                            <!-- end of offer row -->

                            <div class="button hidden-xs">
                                <img src="{$asset}/{$lang}/button.png" alt="NetBet" class="img-responsive" >
                            </div>
                            <!-- end of button row -->
                            <p class="text-center white">*Initial deposit required.</p>
                            <div class="button visible-xs">

                                {if $lp == 'devices'}
                                    <div  class="CTA-button center-block">PLAY NOW</div>
                                {elseif $lp=='twister'}
                                    <div  class="CTA-button center-block">PLAY ON MOBILE</div>
                                {elseif $lp=='mobile'}
                                    <div  class="CTA-button center-block">PLAY FREE</div>
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

    <a href="{$cta.poker}" rel="nofollow">
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
                    <p class="pull-left  ">
                        *<a href="#modal">
                            <span class="text-muted">Terms &amp; Conditions</span>

                        </a>
                    </p>

                    <br>

                </div>
            </div>
            {include file="lab/organisms/footer/footer-main.tpl"}
        </div>
    </section>

    <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
        <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
        <div>
            {include file="{$smarty.current_dir}/terms.tpl"}
        </div>
        <!-- loadind terms from terms from Jquery -->
        <br>
        <button data-remodal-action="confirm" class="remodal-confirm">OK</button>
    </div>
    <!-- end of modal pop up -->

{/block}
{block name=footer}

    <script src="src/js/remodal.min.js"></script>

    <script>
        $(function(){
            $("#modal1Desc").load("20bonus/{$lp}/terms.html");
        });
    </script>

{/block}


