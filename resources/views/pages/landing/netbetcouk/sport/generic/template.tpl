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

    <a href="{$cta.casino}" rel="nofollow">
        <section class="mobile visible-xs">
            <div class="row">
                <div class="container-fluid">
                    <img src="{$asset}/mobile.jpg" class="img-responsive center-block" alt="">
                    <div class="button-m">
                        <img src="{$asset}/button.png" class="img-responsive center-block" alt="">
                    </div>

                </div>

            </div>
        </section>
        <!-- end of mobile section-->

        <section class="main hidden-xs">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-5 col-sm-4 col-md-4 col-lg-4  pull-right">
                        <div class="box">
                            <div class="offer " >
                                <img src="{$asset}/offer.png" class="img-responsive center-block" alt="">

                            </div>
                            <!-- end of offer row -->

                            <div class="button">
                                <img src="{$asset}/button.png" class="img-responsive center-block" alt="">
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
            <div class="row">
                <div class="col-xs-11 ">
                    <br>
                    <p class="terms">
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
            {include file="pages/landing/{$domain}/terms/{$product}/welcome-offer/terms.tpl"}
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






