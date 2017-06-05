{extends file="base/base.tpl"}
{block name=title}
    {$brand|capitalize} {$product|capitalize}
{/block}
{block name=head}
    <link rel="stylesheet" href="https://css.netbet.com/gms/sprites/sprites_eu.css?63">
    <link rel="stylesheet" type="text/css" href="{$asset}/styles.css">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/main.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">
    <script src="src/js/modernizr.js"></script>
    <style>

        @font-face {
            font-family: 'bebas_neuebold';
            src: url("src/fonts/bebasneue_bold-webfont.woff2") format("woff2"), url("src/fonts/bebasneue_bold-webfont.woff") format("woff");
            font-weight: normal;
            font-style: normal;
        }

        @font-face {
            font-family: 'bebas_neuebook';
            src: url("src/fonts/bebasneue_book-webfont.woff2") format("woff2"), url("src/fonts/bebasneue_book-webfont.woff") format("woff");
            font-weight: normal;
            font-style: normal;
        }

        @font-face {
            font-family: 'bebas_neuelight';
            src: url("src/fonts/bebasneue_light-webfont.woff2") format("woff2"), url("src/fonts/bebasneue_light-webfont.woff") format("woff");
            font-weight: normal;
            font-style: normal;
        }

        @font-face {
            font-family: 'bebas_neue_regularregular';
            src: url("src/fonts/bebasneue_regular-webfont.woff2") format("woff2"), url("src/fonts/bebasneue_regular-webfont.woff") format("woff");
            font-weight: normal;
            font-style: normal;
        }

        @font-face {
            font-family: 'bebas_neuethin';
            src: url("src/fonts/bebasneue_thin-webfont.woff2") format("woff2"), url("src/fonts/bebasneue_thin-webfont.woff") format("woff");
            font-weight: normal;
            font-style: normal;
        }

        @font-face {
            font-family: 'bebas_neueromania';
            src: url("src/fonts/bebasneue_romania-webfont.woff2") format("woff2"), url("src/fonts/bebasneue_romania-webfont.woff") format("woff");
            font-weight: normal;
            font-style: normal;
        }
        .hero_mobile .hero_content {
            background: url({$asset}/img/bg-0c0e13.jpg) no-repeat center center;
            background-size: cover;
            height: 100vh !important;
        }
        #footer{
            color: #8f8e8f;
        }
    </style>
{/block}
{block name=body}
    <header style="background-color: rgba(0, 0, 0, 0.65098); position: absolute; transition: 0.3s;">
        <div class="wrapper">
            <div class="container">
                <div class="header_content">
                    <div class="logo_container">
                        <a href="https://banners.livepartners.com/click.php?p=126&amp;l=en-GB&amp;id=&amp;lp=sport-xmas&amp;bid2land=1&amp;t=register" class="logo sprite-global-layout sprite-global-layout-logo"></a>
                    </div>
                    <div class="header_title">
                        <a href="https://banners.livepartners.com/click.php?p=126&amp;l=en-GB&amp;id=&amp;lp=sport-xmas&amp;bid2land=1&amp;t=register&amp;_ga=1.80622740.2092947639.1469625343" class="title">Sport Room</a>
                    </div>
                    <div class="sign_btn_holder">
                        <a href="https://banners.livepartners.com/click.php?p=126&amp;l=en-GB&amp;id=&amp;lp=sport-xmas&amp;bid2land=1&amp;t=register" class="sign_up_btn">Sign Up</a>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <section class="hero">
        <div class="hero_content">
            <div class="container">
                <div class="text_holder">
                    <a href="https://banners.livepartners.com/click.php?p=126&amp;l=en-GB&amp;id=&amp;lp={$asset}&amp;bid2land=1&amp;t=register&amp;_ga=1.41819041.2092947639.1469625343" class="text_inner">
                        <p class="w_border animated delay fadeInLeft">£50 FREE</p>
                        <p class="large x1 delayX1 fadeIn">AT NETBET</p>
                        <p class="small animated delayX2 fadeInRight">you always score</p>
                        <p class="green_btn animated delayX3 fadeInUp"><span class="text">GET YOUR BONUS</span></p>
                    </a>
                </div>
            </div>
            <div class="background-wrapper">
                <figure class="floating-background">
                    <img src="{$asset}/img/bg.jpg" alt="image-1">
                    <img src="{$asset}/img/img-2.png" alt="image-2" class="fadeinRight animated">
                    <img src="{$asset}/img/img-3.png" alt="image-3">
                </figure>
            </div>
        </div>
    </section>
    <section class="hero_mobile">
        <div class="hero_content">
            <div class="container">
                <div class="text_holder">
                    <a href="https://banners.livepartners.com/click.php?p=126&amp;l=en-GB&amp;id=&amp;lp=sport-xmas&amp;bid2land=1&amp;t=register" class="text_inner">
                        <p class="w_border x1 delayX1 bounceInLeft">£50 free</p>
                        <p class="large x1 delayX1 fadeIn">At Netbet</p>
                        <p class="small delayX1 x2 fadeInRight">you always score</p>
                    </a>
                </div>
            </div>
            <div class="images_holder">
                <img src="{$asset}/img/img-2.png" alt="image-2" class="players">
                <img src="{$asset}/img/img-3.png" alt="image-3" class="keeper">
            </div>
        </div>
    </section>
    <div class="hero_footer animated fadeIn">
        <div class="wrapper">
            <div class="container">
                <div class="hero_footer_text">
                    <div class="sign_up_btn">
                        <a href="https://banners.livepartners.com/click.php?p=126&amp;l=en-GB&amp;id=&amp;lp=sport-xmas&amp;bid2land=1&amp;t=register" class="green_btn"><span class="text">Score your Bonus</span></a>
                    </div>
                    <p class="text">NEW CUSTOMERS ONLY - ENTER BONUS CODE: WELCOME50 - PLAYTHROUGH 1X DEPOSIT TO RECEIVE YOUR BONUS, PLAYTHROUGH X6 (DEPOSIT AND BONUS) <a href="#modal" class="tc_link">T&amp;CS APPLY</a>.</p>
                </div>
            </div>
        </div>
    </div>
    <section class="steps_section">
        <div class="wrapper">
            <<div class="container">
                <h1 class="steps_title  fadeIn wow animated" style="visibility: visible; animation-name: fadeIn;">Here's how it works</h1>
                <div class="steps_holder">
                    <a href="https://banners.livepartners.com/click.php?p=126&amp;l=en-GB&amp;id=&amp;lp={$asset}&amp;bid2land=1&amp;t=register" class="step_link">
                        <ul class="step step_one">
                            <li class="text_container text_desktop col-xs-5">
                                <div class="step_text text_left">
                                    <p class="text_blue  fadeInLeft wow animated" style="visibility: visible; animation-name: fadeInLeft;">1 - CREATE YOUR ACCOUNT</p>
                                    <p class="text_grey delay  fadeInLeft wow animated" style="visibility: visible; animation-name: fadeInLeft;">ACCESS OVER 20,000 MARKETS A MONTH</p>
                                </div>
                            </li>
                            <li class="icon_holder col-xs-2">
                                <div class="step_icon  fadeIn wow animated" style="visibility: visible; animation-name: fadeIn;">
                                    <img src="{$asset}/img/step1.png" alt="">
                                </div>
                            </li>
                            <li class="text_container text_mobile">
                                <div class="step_text text_left">
                                    <p class="text_blue animated fadeInLeft wow animated" style="visibility: visible; animation-name: fadeInLeft;">1 - CREATE YOUR ACCOUNT</p>
                                    <p class="text_grey delay animated fadeInLeft wow animated" style="visibility: visible; animation-name: fadeInLeft;">ACCESS OVER 20,000 MARKETS A MONTH</p>
                                </div>
                            </li>
                        </ul>
                    </a>
                    <div class="clearfix"></div>
                    <div class="line animaded fadeInDown wow" style="visibility: visible; animation-name: fadeInDown;"></div>
                    <div class="clearfix"></div>
                    <a href="https://banners.livepartners.com/click.php?p=126&amp;l=en-GB&amp;id=&amp;lp={$asset}&amp;bid2land=1&amp;t=register" class="step_link">
                        <ul class="step step_two">
                            <li class="empty col-xs-5"></li>
                            <li class="icon_holder col-xs-2">
                                <div class="step_icon  fadeIn wow animated" style="visibility: visible; animation-name: fadeIn;">
                                    <img src="{$asset}/img/step2.png" alt="">
                                </div>
                            </li>
                            <li class="text_container col-xs-5">
                                <div class="step_text text_right">
                                    <p class="text_blue  fadeIn wow animated" style="visibility: visible; animation-name: fadeIn;">2 - ENTER BONUS CODE: WELCOME50</p>
                                    <p class="text_grey delay  fadeIn wow animated" style="visibility: visible; animation-name: fadeIn;">MAKE A 1ST DEPOSIT</p>
                                </div>
                            </li>
                        </ul>
                    </a>
                    <div class="clearfix"></div>
                    <div class="line animaded fadeInDown wow" style="visibility: visible; animation-name: fadeInDown;"></div>
                    <div class="clearfix"></div>
                    <a href="https://banners.livepartners.com/click.php?p=126&amp;l=en-GB&amp;id=&amp;lp={$asset}&amp;bid2land=1&amp;t=register" class="step_link">
                        <ul class="step step_three">
                            <li class="text_container text_desktop col-xs-5">
                                <div class="step_text text_left">
                                    <p class="text_blue  fadeInLeft wow animated" style="visibility: visible; animation-name: fadeInLeft;">3 - start scoring!</p>
                                    <p class="text_grey delay  fadeInLeft wow animated" style="visibility: visible; animation-name: fadeInLeft;">RECEIVE UP TO €50 FREE AFTER ROLLOVER</p>
                                </div>
                            </li>
                            <li class="icon_holder col-xs-2">
                                <div class="step_icon  fadeIn wow animated" style="visibility: visible; animation-name: fadeIn;">
                                    <img src="{$asset}/img/step3.png" alt="">
                                </div>
                            </li>
                            <li class="text_container text_mobile">
                                <div class="step_text text_right">
                                    <p class="text_blue animated fadeIn wow animated" style="visibility: visible; animation-name: fadeIn;">3 - start scoring!</p>
                                    <p class="text_grey delay animated fadeIn wow animated" style="visibility: visible; animation-name: fadeIn;">RECEIVE UP TO €50 FREE AFTER ROLLOVER</p>
                                </div>
                            </li>
                        </ul>
                    </a>
                </div>
            </div>
        </div>
    </section>
    <section class="green_banner">
        <div class="wrapper">
            <div class="container">
                <p class="text">deposit securely with <span class="blue_banner_logo"><img src="src/img/PayPal-lg.png" alt=""></span> and <span class="blue_banner_logo"><img src="src/img/BitCoin-lg.png" alt=""></span></p>
            </div>
        </div>
    </section>

    <section id="footer" class="bg-darkgrey" style="background: #1e1e1e; padding-top: 20px">
        <div class="container">
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
{/block}
{block name=footer}


    <script type="text/javascript" src="src/js/remodal.min.js"></script>
    <script src="src/js/wow.js"></script>
    <script src="{$asset}/js/main.js"></script>

    <script>
        $("body").addClass('{$lang}');

    </script>
{/block}

