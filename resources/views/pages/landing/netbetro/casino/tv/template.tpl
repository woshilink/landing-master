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
            font-family: HelveticaNueve77Cond;
            src: url("src/fonts/HelveticaNeueLTStd-BdCn.otf");
        }

        /* oblique font for offer */

        .main {
            background-image: url('{$asset}/bg.jpg');
        }

    </style>
{/block}
{block name=body}
    <section id="main-nav">
        <nav class="navbar black-transparent">
            <div class="container">
                {include file="lab/organisms/nav/nav-main.tpl" text=#text#}
            </div>
        </nav>
    </section>
    <!-- end of NAV -->
    <a href="{$cta.casino}" rel="nofollow">
        <section class="main">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-6 col-sm-5  col-md-5 pull-right">

                        <div class="offer" >


                            <h2>DUBLAȚI-VĂ PRIMUL DEPOZIT </h2>
                            <h2>PÂNĂ LA 800 RON</h2>

                        </div>
                    </div>
                </div>
                <!-- end of offer row -->
                <div class="row">
                    <div class="col-xs-6 col-sm-5 col-md-5 pull-right">
                        <div class="button">
                            <div  class="CTA-button center-block">APASĂ AICI</div>
                        </div>
                    </div>

                </div>
                <!-- end of button row -->

            </div>
            <!-- end of main container -->

        </section>
    </a>
    <!-- end of main section -->

    <a href="{$url}" rel="nofollow">
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

    <section id="tems">
        <div class="container-fluid">
            <div class="row terms">
                <div class="col-xs-11 ">
                    <br>
                    <p class="terms">
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
        <div class="container">
            {include file="lab/organisms/footer/footer-main.tpl"
            responsible_text_header = 'JOC RESPONSABIL'
            payment_text_header = 'METODE DE PLATĂ'
            }
        </div>
    </section>


    <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
        <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
        <div>
            {include file="pages/landing/{$domain}/terms/{$product}/800ron/terms.tpl"}
        </div>
        <!-- loadind terms from terms from Jquery -->
        <br>
        <button data-remodal-action="confirm" class="remodal-confirm">OK</button>
    </div>


{/block}
{block name=footer}
    <script src="src/js/remodal.min.js"></script>


{/block}



