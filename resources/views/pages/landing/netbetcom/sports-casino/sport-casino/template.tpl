{extends file="base/base.tpl"}
{block name=title}
    NETBET SPORT - CASINO
{/block}
{block name=head}
    <link href="src/css/main.css" rel="stylesheet">
    <link href="{$asset}/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">
    <style>
        .main {
            background-image: url('{$asset}/img/bg.jpg');
        }
        .offscreen{
            position: absolute;
            margin-top: -5000px;
        }

        @media only screen and (max-width : 768px) {
            .main {
                background-image: none;
            }
            .offer-sec {
                background-image: url('{$asset}/img//mobile.jpg');
                background-size: cover;
            }
        }
        @media only screen and (max-width : 480px) {
            .main {
                background-image: url('{$asset}/img//mobile.jpg');
                background-size: initial;
                background-position: bottom;
                height: 400px;
            }

            .offer-sec {
                background-image: none;
                background-size: cover;
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

    <section class="main">
        <div class="container-fluid">




        </div>
        <!-- end of main container -->

    </section>
    <section class="offer-sec">
        <div class="container-fluid">

            <div class="row">
                <div class="col-xs-6 ">
                    <div class="casino-offer">

                        <div class="icon" >
                            <a href="{$cta.casino}" rel="nofollow">
                                <img src="{$asset}/{$lang}/casino-offer-d.png" class="img-responsive center-block hidden-xs" alt="">
                                <img src="{$asset}/{$lang}/casino-offer-m.png" class="img-responsive center-block visible-xs" alt="">
                                <img src="{$asset}/{$lang}/casino-offer-d.png" class="img-responsive center-block visible-xxs" alt="">
                            </a>
                        </div>


                    </div>

                </div>
                <div class="col-xs-6 ">
                    <div class="box">
                        <div class="sport-offer" >
                            <a href="{$cta.sport}" rel="nofollow">
                                <img src="{$asset}/{$lang}/sport-offer-d.png" class="img-responsive center-block hidden-xs" alt="">
                                <img src="{$asset}/{$lang}/sport-offer-m.png" class="img-responsive center-block visible-xs" alt="">
                                <img src="{$asset}/{$lang}/sport-offer-d.png" class="img-responsive center-block visible-xxs" alt="">
                            </a>
                        </div>
                        <!-- end of offer row -->


                    </div>

                </div>

            </div>




        </div>
        <!-- end of main container -->

    </section>


    <a href="{$cta.sport}">
        <section class="steps">
            <div class="container-fluid">
                <div class="row visible-xs">
                    <div class="text-center">
                        <h3>{$text}</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 hidden-xs">

                        <img src="{$asset}/{$lang}/steps.png" alt="" class="img-responsive center-block">

                    </div>
                </div>
                <!-- end of lage screen steps -->

                <div class="row">
                    <div class="col-xs-12 visible-xs">

                        <img src="{$asset}/{$lang}/steps_mobile.png" alt="" class="img-responsive center-block">

                    </div>
                </div>
                <!-- end of small sreen steps -->
            </div>

        </section>
    </a>
    <!-- end of steps section -->
    <section class="terms-both">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12">
                    <div class="term">
                        <a href="#modal" rel="nofollow">
                            <div class="text-left">
                                {if $lang == 'fr'}
                                    <p>*Termes et Conditions</p>
                                {elseif $lang == 'nl'}
                                    <p>*Algemene voorwaarden</p>
                                {elseif $lang == 'de'}
                                    <p>* Teilnahmebedingungen</p>
                                {elseif $lang == 'ro'}
                                    <p>* Termeni și Condiții</p>
                                {elseif $lang == 'ru'}
                                    <p>* Правила и условия</p>
                                {else}
                                    <p>*Terms & Condition</p>
                                {/if}
                            </div>
                        </a>
                    </div>
                </div>
            </div>

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
    <!-- end of footer -->


    <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
        <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
        <div>
            {include file="pages/landing/{$domain}/terms/{$product}/welcome-offer/{$lang}/terms.tpl"}
        </div>
        <!-- loadind terms from terms from Jquery -->
        <br>
        <button data-remodal-action="confirm" class="remodal-confirm">OK</button>
    </div>
    <!-- end of modal pop up -->


{/block}
{block name=footer}
    <script src="src/js/remodal.min.js"></script>

    <!-- Include MomentJS library -->

    <script>
        $(function(){
            $("#modal1Desc").load("terms/casino-200free-sport-50free.html");
        });

    </script>

{/block}