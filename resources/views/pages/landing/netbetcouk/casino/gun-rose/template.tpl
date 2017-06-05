{extends file="base/base.tpl"}
{block name=title}
   Netbet Casino
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
        /* Small Devices, Tablets */
        @media only screen and (max-width : 767px) {
            .main {
                background-image: none;
            }
        }

        .offscreen{
            position: absolute;
            margin-top: -5000px;
        }
        .terms{
            display: none;
        }
    </style>
{/block}
{block name=body}
    <a href="{$cta.casino}" rel="nofollow">

        <section class="main">
            <nav class="navbar">
                <div class="container-fluid">
                    <div class="row">

                        {if $text || $co_logo}
                            <div id="logo" class="col-xs-6 col-sm-4 ">

                                <img src="src/img/netbet/logo.png" alt="NetBet" class="pull-left img-responsive" >

                            </div>
                            <div class="col-xs-4 text-center hidden-xs custom-text">
                                <h4 style="color: white;">{$text}</h4>
                            </div>

                            <!-- Co logo -->
                            {if $co_logo}
                                <div class="col-xs-6 col-sm-4 co-logo">
                                    <img src="{$co_logo}" class="img-responsive center-block" alt="">
                                </div>
                                <!-- end of co logo -->
                            {/if}

                        {else}
                            <div id="logo" class="col-xs-offset-4 col-xs-4 col-sm-offset-0 col-sm-4">

                                <img src="src/img/netbet//logo.png" alt="NetBet" class="center-block img-responsive" >

                            </div>
                        {/if}


                    </div>
                </div>
            </nav>
            <!-- end of NAV -->
            <div class="container-fluid hidden-xs">
                <div class="row">
                    <div class="col-xs-7 col-sm-5 pull-right">

                        <div class="offer" >
                            <!-- Add offer here-->
                            <img src="{$asset}/offer.png" class="img-responsive pull-right" />


                        </div>
                    </div>
                </div>
                <!-- end of offer row -->
                <div class="row">
                    <div class="col-xs-7 pull-right">

                    </div>

                </div>
                <!-- end of button row -->

            </div>
            <!-- end of main container -->

        </section>
        <section class="mobile visible-xs">

            <div class="container-fluid">
                <div class="row">

                    <div class="col-xs-12">
                        <img src="{$asset}/mobile.jpg" class="img-responsive center-block" />
                        <img src="{$asset}/offer-mobile.png" class="img-responsive center-block" />

                    </div>
                </div>
            </div>
        </section>
        <!--  End of mobile section -->
    </a>
    <!-- end of main section -->
    <div class="container-fluid">
        <div class="row text-center" style="margin-top: 15px;">
            <span style="color: #ffffff;">New players only. &pound;10+ deposit required, wagering and T&amp;C apply.</span>
        </div>
    </div>
    <a href="{$cta.casino}" rel="nofollow">
        <section class="steps-sec">
            <div class="container-fluid">
                <div class="row visible-xs">
                    <div class="text-center">
                        <h3>{$text}</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="steps">
                        <div class="container-fluid">

                            <div class="row">
                                <div class="col-xs-12 hidden-xs">
                                    <img src="{$asset}/steps.png" alt="" class="img-responsive center-block">
                                </div>
                            </div>
                            <!-- end of lage screen steps -->


                        </div>

                    </div>
                </div>

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
    <section class="tc">
        <div class="container-fluid">
            <div class="row">
                <div  class="col-xs-12">
                    <a href="#modal">
                        <p>* Terms & Conditions</p>
                    </a>
                </div>
            </div>
        </div>
    </section>
    <section id="footer" class="bg-darkgrey">
        <div class="container-fluid">
            {include file="lab/organisms/footer/footer-main.tpl"
            responsible_text_header = 'RESPONSIBLE GAMING'
            payment_text_header = 'PAYMENT METHODS'
            }
        </div>
    </section>

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






