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
        .offscreen{
            position: absolute;
            margin-top: -5000px;
        }
    </style>

{/block}
{block name=body}
    <section id="main-nav">
        <nav class="navbar black-transparent">
            <div class="container">
                {include file="lab/organisms/nav/nav-main.tpl" }
            </div>
        </nav>
    </section>


    <!-- end of NAV -->

    <a href="{$cta.casino}" rel="nofollow">
        <section class="mobile visible-xs">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-12">
                        <img  src="{$asset}/mobile.jpg" class="img-responsive"/>
                        <div class="button">
                            <img  src="{$asset}/button.png" class="img-responsive center-block"/>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="main hidden-xs">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-6 col-sm-4 pull-right">

                        <div class="offer" >


                            <img src="{$asset}/offer.png" class="img-responsive center-block" />


                        </div>
                    </div>
                </div>
                <!-- end of offer row -->
                <div class="row">
                    <div class="col-xs-6 col-sm-4  pull-right">
                        <div class="button" >
                            <img src="{$asset}/button.png" class="img-responsive center-block" />
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
                    <div class="col-xs-12">

                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 visible-xs">
                        <img src="{$asset}/steps_mobile.png" alt="" class="img-responsive center-block">
                    </div>
                </div>
                <!-- end of small sreen steps -->
                <div class="row terms">
                    <div class="col-xs-3  hidden-xs">
                        <br>
                        <p  class="hidden-xs terms">
                            <a  href="#modal" rel="nofollow">
                                <span class="text-white">Termini e Condizioni</span>

                            </a>
                        </p>

                        <br>

                    </div>
                    <div class="col-xs-6  hidden-xs">
                        <br>
                        <p  class="hidden-xs terms">
                        <p class="text-center info">
                            offerta limitata!
                        </p>
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
    <!-- end of steps section -->
    <section id="footer" class="bg-darkgrey">
        <div class="container-fluid">
            {include file="lab/organisms/footer/footer-main.tpl"}
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

    <script>
        $(function(){
            $("#modal1Desc").load("affiliate/src/terms.html");
        });
    </script>


{/block}




