{extends file="base/base.tpl"}
{block name=title}
    Netbet {$product|capitalize}
{/block}
{block name=head}
    <link href="src/css/main.css" rel="stylesheet">
    <link href="{$asset}/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">

    <style>
        @font-face {
            font-family: Myriadpro;
            src: url("src/fonts/MYRIADPRO-BOLDCOND.OTF");
        }


        .main {
            background-image: url('{$asset}/bg.jpg');
        }
        .offscreen{
            position: absolute;
            margin-top: -5000px;
        }
        .co-logo{
            margin-top: 5px;
        }
        .co-logo img{
            height: 47px;
        }
        .offer h2 {
            line-height: 34PX;
            margin-top: 30px;
        }
        .offer h2 span{
            color: #ddd;
        }
    </style>
{/block}
{block name=body}
    <section id="main-nav">
        <nav class="navbar">
            <div class="container-fluid">
                {include file="lab/organisms/nav/nav-main.tpl" text=$text}
            </div>
        </nav>
    </section>
    <!-- end of NAV -->

    <a href="{$cta.sport}" rel="nofollow">
        <section class="main">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-7 col-xs-offset-5  col-sm-4 col-sm-offset-8">

                        <div class="box">
                            <div class="offer" >
                                <div class="offer-text">
                                    <h1>Pariază în siguranță</h1>
                                    <!--<h2>200 RON GRATIS<br />-->
                                    <h2>1500 RON GRATIS<br />
                                        <!--<span>+20 RON FREEBET</span>-->
                                    </h2>
                                    <h2></h2>
                                </div>

                            </div>
                            <!--  End of offer -->
                            <div class="button">
                                <div  class="CTA-button center-block">PARIAZĂ ACUM</div>
                            </div>
                            <!-- End of button -->
                        </div>


                    </div>
                </div>
                <!-- end of offer row -->

                <div class="row">
                    <div class="col-xs-12 col-lg-4 pull-right">

                    </div>

                </div>
                <!-- end of button row -->

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

    <section id="terms">
        <div class="container-fluid">

            <div class="row terms">
                <div class="col-xs-11">
                    <br>
                    <p class="pull-left  terms">
                        *<a href="#modal">
                            <span class="text-grey-light">Termeni și condiții</span>

                        </a>
                    </p>

                    <br>

                </div>
            </div>
        </div>
    </section>

    <section id="footer" class="bg-darkgrey">
        <div class="container-fluid">
            {include file="lab/organisms/footer/footer-main.tpl"
            responsible_text_header = 'JOC RESPONSABIL'
            payment_text_header = 'METODE DE PLATĂ'
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







