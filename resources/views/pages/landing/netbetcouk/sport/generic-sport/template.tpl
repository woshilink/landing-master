{extends file="base/base.tpl"}
{block name=title}
    Netbet Sport
{/block}
{block name=head}
    <link href="src/css/main.css" rel="stylesheet">
    <link href="{$asset}/styles.css" rel="stylesheet">
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

        {if $lp == 'premire-league1'}
        .box {
            padding: 114px 0 96px 0;
            background-color: rgba(29, 28, 26, 0.76);
        }
        {elseif $lp == '50plus10'}

        .box {
            padding: 0;
        }
        .offer img{
            width: 217px;
        }
        {elseif $lp == 'racing4'}
        @media only screen and (max-width: 1200px){
            .button {
                padding: 0 0 0 0 !important;
            }
            .bonuscode h2{
                font-size: 20px;
            }

        }
        {elseif $lp == 'liv-spurs'}
        .info img {
            width: 100%;
        }
        .box {
            padding: 22px 0 40px 0;
        }
        {elseif $lp == 'mcgregor'}
        .box {
            padding: 22px 0 50px 0;
        }
        {/if}
        @media only screen and (-webkit-min-device-pixel-ratio: 2) and (min-width: 900px),
        only screen and (   min--moz-device-pixel-ratio: 2) and (min-width: 900px),
        only screen and (     -o-min-device-pixel-ratio: 2/1) and (min-width: 900px),
        only screen and (        min-device-pixel-ratio: 2) and (min-width: 900px),
        only screen and (                min-resolution: 192dpi) and (min-width: 900px),
        only screen and (                min-resolution: 2dppx) and (min-width: 900px){

            .main{
                height: auto;
            }
            .offer img{
                width: 160px;
            }
            .box {
                padding: 12px 0 10px 0;
            }
            .offer {
                margin-top: 0px;
                padding: 10px 0 0 0;
            }
            .button {
                padding: 0 0 10px 0;
            }

        }
    </style>
{/block}
{block name=body}

    <nav class="navbar">
        <div class="container-fluid">
            <div class="row">
                <div id="logo" class="col-xs-6 col-sm-4 ">
                    <a href="{$cta.sport}" rel="nofollow">
                        <img src="src/img/netbet/logo.png" alt="NetBet" class="pull-left img-responsive" >
                    </a>
                </div>

                    <div class="col-xs-4 text-center hidden-xs custom-text">
                        <h4 style="color: white;">{$text}</h4>
                    </div>
                    <!-- Co logo -->
                    {if $co_logo}
                        <div class="col-xs-6 col-sm-4 logo">
                            <img src="{$co_logo}" class="img-responsive center-block" alt="">
                        </div>
                        <!-- end of co logo -->
                    {/if}



            </div>
        </div>
    </nav>
    <!-- end of NAV -->

    <a href="{$cta.sport}" rel="nofollow">
        <section class="mobile visible-xs">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-12">
                        <img src="{$asset}/mobile.jpg" class="img-responsive center-block" alt="">
                        <div class="button">
                            <div  class="CTA-button center-block">BET NOW</div>
                        </div>
                        <!-- end of button row -->

                        {if $lp == 'racing4'}
                            <div class="bonuscode">
                                <div>
                                    <h2>
                                        Bonuscode: WELCOME50
                                    </h2>

                                </div>
                            </div>
                            <!-- end of button row -->
                        {/if}
                    </div>
                </div>
            </div>
        </section>
        <!-- End of mobile section -->

        <section class="main hidden-xs">
            <div class="container-fluid">
                <div class="row">
                    <div class="{if $lp == 'liv-spurs'}col-xs-8 {else}col-xs-5{/if} ">
                        <div class="info" >

                            <img src="{$asset}/info.png" class="img-responsive center-block" alt="">

                        </div>
                        <!-- end of offer row -->
                    </div>
                    <div class="col-xs-5 col-sm-4 col-md-4 col-lg-4  pull-right">
                        <div class="box">
                            <div class="offer " >

                                <img src="{$asset}/offer.png" class="img-responsive center-block" alt="">

                            </div>
                            <!-- end of offer row -->

                            <div class="button">
                                <div  class="CTA-button center-block">BET NOW</div>
                            </div>
                            <!-- end of button row -->
                            {if $lp == 'racing4'}
                                <div class="bonuscode">
                                    <div>
                                        <h2>
                                            Bonuscode: WELCOME50
                                        </h2>

                                    </div>
                                </div>
                                <!-- end of button row -->
                            {/if}
                        </div>

                    </div>
                </div>




            </div>
            <!-- end of main container -->

        </section>
    </a>
    <!-- end of main section -->
    <div class="container-fluid">
        <div class="row text-center">
            <span style="color: #ffffff;">New Customers / Enter Code WELCOME50 / Playthrough is x6 (Deposit &amp; Bonus) / T&amp;Cs apply</span>
        </div>
    </div>
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

                            <img src="{$asset}/steps.png" alt="" class="img-responsive center-block">

                    </div>
                </div>
                <!-- end of lage screen steps -->

                <div class="row">
                    <div class="col-xs-12 visible-xs">

                            <img src="{$asset}/steps_mobile.png" alt="" class="img-responsive center-block">

                    </div>
                </div>
                <!-- end of small sreen steps -->
            </div>

        </section>
    </a>
    <!-- end of steps section -->

    <section id="terms">
        <div class="container-fluid">
            <div class="row terms">
                <div class="col-xs-11 hidden-xs">
                    <br>
                    <p class=" terms">
                        *<a href="#modal">
                            <span class="text-white">Terms &amp; Conditions</span>

                        </a>
                    </p>

                    <br>

                </div>
            </div>
        </div>
    </section>
    <footer id="footer">
        <div class="container-fluid">
            {include file="lab/organisms/footer/footer-main.tpl"
            responsible_text_header = 'RESPONSIBLE GAMING'
            payment_text_header = 'PAYMENT METHODS'

            }
        </div>
    </footer>

    <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
        <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
        <div>
            {include file="pages/landing/{$domain}/terms/{$product}/50bonusPlus10mobile/terms.tpl"}
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
            {if $lp == 'xmasfest'}
            $("#modal1Desc").load("terms/xmasfest.html");
            {elseif $lp == '50plus10'}
            $("#modal1Desc").load("terms/get50free-plus10-2.html");
            {elseif $lp == 'mcgregor' || $lp == 'liv-spurs'}
            $("#modal1Desc").load("{$asset}/terms.html");
            {else}
            $("#modal1Desc").load("terms/get50free-plus10.html");
            {/if}
        });
    </script>

{/block}



