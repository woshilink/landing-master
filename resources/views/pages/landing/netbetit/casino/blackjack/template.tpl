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
        @font-face {
            font-family: HelveticaNueve77Cond;
            src: url("src/fonts/HelveticaNeueLTStd-BdCn.otf");
        }

        /* oblique font for offer */
        @font-face {
            font-family: HelveticaNueve77Cond;
            src: url("src/fonts/HelveticaNeueLTStd-BdCnOblq.otf");
        }

        .main {
            background-image: url('{$asset}/bg.png');
        }
        .offscreen{
            position: absolute;
            margin-top: -5000px;
        }
    </style>
{/block}
{block name=body}
    <section id="main-nav">
        <nav class="navbar black-transparent ">
            <div class="container">
                {include file="lab/organisms/nav/nav-main.tpl" text=$text}
            </div>
        </nav>
    </section>
    <!-- end of NAV -->

    <a href="{$cta.casino}" rel="nofollow">
        <section class="main">
            <div class="container">
                <div class="row">
                    <div class="col-xs-6 col-sm-5  pull-right">

                        <div class="offer" >
                            <h2>100% FINO A 1000€!</h2>
                        </div>
                    </div>
                </div>
                <!-- end of offer row -->
                <div class="row">
                    <div class="col-xs-6 col-sm-5 pull-right">
                        <div class="button">
                            <div  class="CTA-button center-block">GIOCA ORA</div>
                        </div>
                    </div>
                </div>
                <!-- end of button row -->
            </div>
            <!-- end of main container -->
        </section>
    </a>
    <!-- end of main section -->
    <a href="{$cta.casino}" rel="nofollow">
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
                <div class="row terms">
                    <div class="col-xs-11 col-lg-offset-1 hidden-xs">
                        <br>
                        <p  class="hidden-xs terms">
                            <a  href="#modal" rel="nofollow">
                                <span class="text-white">Termini e Condizioni</span>

                            </a>
                        </p>

                        <br>

                    </div>
                </div>
                <!-- end of terms and condition large screen row -->

                <div class="row terms">
                    <p id="terms_mobile" class="visible-xs text-center terms">
                        <br>
                        <a href="#modal"  rel="nofollow" class="text-white">Termini e Condizioni </a>
                    </p>
                </div>
                <!-- end of ters and condition small screen row -->
            </div>

        </section>
    </a>
    <section id="footer" class="bg-darkgrey">
        <div class="container">
            {include file="lab/organisms/footer/footer-main.tpl"
            responsible_text_header = #responsible_text_header#
            payment_text_header = #payment_text_header#
            payment_methods = $content.payment_methods
            responsibles = $content.responsibles
            }
        </div>
    </section>
    <!-- end of steps section -->
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

    <script>
        $(function(){
            $("#modal1Desc").load("terms.html");
        });
    </script>

{/block}



