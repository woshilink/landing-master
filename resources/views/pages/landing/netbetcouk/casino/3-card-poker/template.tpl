{extends file="base/base.tpl"}
{block name=title}
   Netbet Casino
{/block}
{block name=head}
    <!-- Bootstrap -->
    <link href="/src/css/bootstrap.min.css" rel="stylesheet">
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
        @media only screen and (max-width : 767px) {
            .mobile{
                background-image: url('{$asset}/bg.jpg');
                background-size: 139%;
                background-repeat: no-repeat;
                background-position: top;
                background-color: black;
            }
        }
    </style>

{/block}
{block name=body}
    <section id="main-nav">
        <nav class="navbar black-transparent">
            <div class="container">
                {include file="lab/organisms/nav/nav-main.tpl" text=$text}
            </div>
        </nav>
    </section>

    <a href="{$cta.casino}" rel="nofollow">
        <section class="mobile visible-xs">
            <div class="container-fluid">
                <div class="row">

                    <div class="col-xs-12">
                        <div class="offer">
                            <img src="{$asset}/offer.png" class="img-responsive center-block" />
                        </div>

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
                    <div class=" col-sm-8 col-sm-offset-2 ">

                        <div class="offer" >
                            <!-- Add offer here-->
                            <img src="{$asset}/offer.png" class="img-responsive pull-right" />


                        </div>
                    </div>
                </div>
                <!-- end of offer row -->
                <div class="row">
                    <div class=" col-sm-8 col-sm-offset-4 ">
                        <div class="button">
                            <div  class="CTA-button center-block">PLAY NOW</div>
                        </div>
                    </div>

                </div>
                <!-- end of button row -->

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

    <section class="steps-m">
        <div class="container-fluid">
            <div class="row">
                <div class="steps">
                    <div class="col-xs-12">
                        <div class="row">
                            <div class="col-xs-12 hidden-xs">
                                <a href="{$cta.casino}" rel="nofollow">
                                    <img src="{$asset}/steps.png" alt="" class="img-responsive center-block">
                                </a>
                            </div>
                        </div>
                        <!-- end of lage screen steps -->
                    </div>

                </div>
            </div>
            <div class="row visible-xs custom-text">
                <div class="text-center">
                    <h3>{$text}</h3>
                </div>
            </div>


            <div class="row">
                <div class="col-xs-12 visible-xs">
                    <a href="{$cta.casino}" rel="nofollow">
                        <img src="{$asset}/steps_mobile.png" alt="" class="img-responsive center-block">
                    </a>
                </div>
            </div>
            <!-- end of small sreen steps -->
            <div class="desc">
                <div class="row">

                    <div class="col-xs-12 col-sm-6">
                        <img src="{$asset}/game.png" class="img-responsive center-block"alt="image" />
                    </div>
                    <!--  End of image -->
                    <div class="col-xs-12 col-sm-5 col-sm-offset-1">
                        <h2>Play Three Card Poker Online</h2>
                        <p>Hone your skills in our leading online Poker games and live poker rooms and you could bag some huge prizes, with special weekly promotions and offers,
                            as well as top loyalty rewards to keep you on a winning streak. Online poker gives you the best chances of winning up to £100,000 online,
                            and even more in a progressive game.
                        </p>
                        <p>
                            The game has given a new dimension to online casino games. Just like in poker, you need a good strategy to win. But to play our game, you don't have to be a poker shark.
                        </p>


                        <div class="button2">
                            <a href="{$cta.casino}">
                                <div  class="CTA-button center-block">PLAY NOW</div>
                            </a>
                        </div>

                    </div>
                    <!--  End of text -->
                </div>
            </div>
            <!-- end of 3 cards poker description -->
        </div>

    </section>
    <!-- end of steps section -->
    <srction id="terms">
        <div class="container">
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
    </srction>
    <section id="footer" class="bg-darkgrey">
        <div class="container">
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

    <script>
        $(function(){
            $("#modal1Desc").load("terms/starburst.html");
        });
    </script>



{/block}







