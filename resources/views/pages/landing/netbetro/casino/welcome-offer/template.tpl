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
    <section id="main-nav">
        <nav class="navbar">
            <div class="container-fluid">
                {include file="lab/organisms/nav/nav-main.tpl" text=$text}
            </div>
        </nav>
    </section>

    <a href="{$cta.casino}" rel="nofollow">
        <section class="mobile visible-xs">
            <div class="container-fluid">
                <div class="row">

                    <div class="col-xs-12">
                        <img src="{$asset}/mobile.jpg" class="img-responsive center-block" />
                        <div class="button">
                            <div  class="CTA-button center-block">APASĂ AICI</div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--  End of mobile section -->

        <section class="main hidden-xs">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-7 col-sm-7  pull-right">

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
                            <div  class="CTA-button center-block">APASĂ AICI</div>
                        </div>
                    </div>

                </div>
                <!-- end of button row -->
                <div class="row">
                    <div class="col-xs-12 hidden-xs steps-d">
                        <img src="{$asset}/steps.png" alt="" class="img-responsive center-block">
                    </div>
                </div>
                <!-- end of lage screen steps -->

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
            {include file="pages/landing/{$domain}/terms/{$product}/800ron/terms.tpl"}
        </div>
        <!-- loadind terms from terms from Jquery -->
        <br>
        <button data-remodal-action="confirm" class="remodal-confirm">OK</button>
    </div>
    <!-- end of modal pop up -->
    <div class="hidden">
        <div class="col-xs-8 gold-rally hidden-xs">
            <a href="https://casino.netbet.ro/millionaire-winner-ro">
                <img src="{$asset}/gold-rally.png" class="img-responsive pull-right" alt="" style="max-width: 500px">
            </a>
        </div>
    </div>


{/block}
{block name=footer}

    <script src="src/js/remodal.min.js"></script>

    <script type="text/javascript">
        $('#main-nav .custom-text').replaceWith( $('.gold-rally'));
    </script>
{/block}




