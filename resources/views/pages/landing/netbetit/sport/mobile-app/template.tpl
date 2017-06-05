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
    <nav class="navbar black-transparent ">
        <div class="container-fluid">
            {include file="lab/organisms/nav/nav-main.tpl" text=$text}
        </div>
    </nav>

    <!-- end of NAV -->

    <a href="{$cta.sport}" rel="nofollow">
        <section class="main">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-7 col-xs-offset-5  col-sm-4 col-sm-offset-8">
                        <div class="box">
                            <div class="offer " >
                                <img src="{$asset}/offer.png" alt="" class="img-responsive center-block">
                            </div>
                            <!-- end of offer row -->
                            <div class="button">
                                <div  class="CTA-button center-block">SCOMMETTI ORA</div>
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

    <section class="terms">
        <div class="container-fluid">
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
                    <a href="#modal" rel="nofollow" class="text-white">Termini e Condizioni </a>
                </p>
            </div>
            <!-- end of ters and condition small screen row -->
        </div>
    </section>

    <footer id="footer" >
        <div class="container-fluid wrapper-1170">
            {include
            file="lab/organisms/footer/footer-main.tpl"
            responsible_text_header=$content.responsible_text_header
            payment_text_header=$content.payment_text_header
            payment_methods=$content.payment_methods
            responsibles=$content.responsibles
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





