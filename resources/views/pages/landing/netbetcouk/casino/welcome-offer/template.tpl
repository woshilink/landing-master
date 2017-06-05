{extends file="base/base.tpl"}
{block name=title}
    Editable title of landing pages
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
        #footer{
            color: grey;
        }
    </style>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
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
    <a href="{$cta.casino}" rel="nofollow">
        <section class="mobile visible-xs">
            <div class="container-fluid">
                <div class="row">

                    <div class="col-xs-12">
                        <img src="{$asset}/mobile.jpg" class="img-responsive center-block" />
                        <div class="button">
                            <div  class="CTA-button center-block">PLAY NOW</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--  End of mobile section -->

        <section class="main hidden-xs">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-7 col-sm-7 pull-right">

                        <div class="offer" >
                            <!-- Add offer here-->
                            <img src="{$asset}/offer.png" class="img-responsive pull-right" />


                        </div>
                    </div>
                </div>
                <!-- end of offer row -->
                <div class="row">
                    <div class="col-xs-7 pull-right">
                        <div class="button">
                            <div  class="CTA-button center-block">PLAY NOW</div>
                        </div>
                    </div>

                </div>
                <!-- end of button row -->
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
            </div>
            <!-- end of main container -->

        </section>
    </a>
    <!-- end of main section -->
    <div class="container-fluid">
        <div class="row text-center" style="margin-top: 15px;">
            <span style="color: #ffffff;">{$legal_txt}</span>
        </div>
    </div>
    <a href="{$cta.casino}" rel="nofollow">
        <section class="steps-m">
            <div class="container-fluid">
                <div class="row visible-xs">
                    <div class="text-center">
                        <h3>{$text}</h3>
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
<section id="terms">
    <div class="container-fluid">
        <div class="row terms">
            <div class="col-xs-11 hidden-xs">
                <br>
                <p class="pull-left hidden-xs terms">
                    *<a href="#modal">
                        <span class="text-white">Terms &amp; Conditions</span>

                    </a>
                </p>

                <br>

            </div>
        </div>
    </div>
</section>
<div class="hidden">
    <div class="col-xs-8 gold-rally hidden-xs">
        <a href="https://casino.netbet.com/en/millionaire-winner-en">
            <img src="{$asset}/gold-rally.png" class="img-responsive pull-right" alt="" style="max-width: 500px">
        </a>
    </div>
</div>
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
    <script type="text/javascript">
        $('#main-nav .custom-text').replaceWith( $('.gold-rally'));
    </script>

{/block}







