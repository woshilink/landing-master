{extends file="base/base.tpl"}
{block name=title}
	{$brand|capitalize} {$product|capitalize} {* Editable title of landing pages *}
{/block}
{block name=head}
	<link rel="stylesheet" href="https://css.netbet.com/gms/sprites/sprites_eu.css?63">
	<link rel="stylesheet" media="screen" href="https://fontlibrary.org/face/bebusneuebold" type="text/css"/>
	<link rel="stylesheet" type="text/css" href="{$asset}/style.css">
	<link rel="stylesheet" href="src/css/remodal.css">
	<link rel="stylesheet" href="src/css/main.css">
	<link rel="stylesheet" href="src/css/remodal-default-theme.css">
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
        .hero .hero_content {
            width: 100%;
            background: url({$asset}/img/Hero-Area-Bg.jpg) no-repeat top center fixed;
        }
        .hero .hero_content .wrapper .container .hero_inner_content .images_holder .calendar_holder .calendar_inner .door_holder .door {
            background: url({$asset}/img/doorSemi_normal.png) no-repeat center center;

            background-size: contain;
        }

        .hero .hero_content .wrapper .container .hero_inner_content .images_holder .calendar_holder .calendar_inner .cta {
            background: url({$asset}/img/Click-Here-Square.png) no-repeat center center;
            background-size: contain;
        }
        footer{
            color: #767676;
        }
    </style>
{/block}
{block name=body}
    <header>
        <div class="wrapper">
            <div class="container">
                <div class="header_content">
                    <div class="logo_container">
                        <a href="{$cta.casino}" class="logo sprite-global-layout sprite-global-layout-logo"></a>
                    </div>
                    <div class="header_title">
                        <a href="{$cta.casino}" class="title">ZONA CAZINO</a>
                    </div>
                    <div class="sign_btn_holder">
                        <a href="{$cta.casino}" class="sign_up_btn">ÎNREGISTRARE</a>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <section class="hero">
        <div class="hero_content">
            <div class="wrapper">
                <div class="container">
                    <div class="hero_inner_content">
                        <div class="text_holder col-xs-12 col-sm-6 col-md-6 animated fadeIn">
                            <a href="{$cta.casino}" class="text_inner">
                                <p class="hero_text large x1 delayX1 bounceInLeft">2.000.000 RON</p>
                                <p class="hero_text mid x3 delayX1 fadeIn">ÎN PREMII ÎN DECEMBRIE</p>
                                <p class="hero_text w_border x3 delayX1 fadeIn">1 PREMIU GRATUIT GARANTAT PER JUCĂTOR</p>
                                <p class="hero_text large x1 delayX1 fadeInRight">ZILNIC</p>
                            </a>
                        </div>
                        <div class="images_holder col-xs-12 col-sm-6 col-md-6">
                            <div class="green_bug x1 delay fadeInUp">
                                <img src="{$asset}/img/Tiny.png" alt="">
                            </div>
                            <div class="calendar_holder animated fadeInDownBig">
                                <img src="{$asset}/img/Calendar.png" alt="">
                                <div class="delayX3 animated fadeIn">
                                    <div class="calendar_inner">
                                        <div class="door_holder">
                                            <div class="door"></div>
                                        </div>
                                        <a href="{$cta.casino}" class="cta x1 delayX3 pulse infinite">
                                            <span class="click">CLIC AICI</span>
                                            <span class="reveal">ȘI DESCOPERĂ PREMIUL</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="chips_holder animated delay fadeInRight">
                                <img src="{$asset}/img/Chips.png" alt="">
                            </div>
                            <div class="blue_flower x1 delay fadeInUp">
                                <img src="{$asset}/img/Flower.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="hero_footer animated fadeIn">
        <div class="wrapper">
            <div class="container">
                <div class="hero_footer_text">
                    <div class="sign_up_btn">
                        <a href="{$cta.casino}" class="btn">ÎNREGISTRARE</a>
                    </div>
                    <p class="text">CALENDARUL SĂRBĂTORILOR DE IARNĂ: SUNT ELIGIBILI JUCĂTORII NOI ȘI EXISTENȚI CARE AU EFECTUAT CEL PUȚIN O DEPUNERE PE NETBET CAZINO - SE ACORDĂ 1 PREMIU GRATUIT GARANTAT PE ZI, ÎNTRE 1 ȘI 24 DECEMBRIE 2016.  <!--<a href="#" class="tc_link">accusamus.</a>--></p>
                </div>
            </div>
        </div>
    </div>
    <section class="steps_section">
        <div class="wrapper">
            <div class="container">
                <h1 class="steps_title animated fadeIn wow">CUM FUNCȚIONEAZĂ</h1>
                <div class="steps_holder">
                    <a href="{$cta.casino}" class="step_link">
                        <ul class="step step_one">
                            <li class="text_container text_desktop col-xs-5">
                                <div class="step_text text_left">
                                    <p class="text_blue animated fadeInLeft wow">1: CREEAZĂ UN CONT</p>
                                    <p class="text_grey delay animated fadeInLeft wow">ȘI BUCURĂ-TE DE JOCURI ȘI PREMII</p>
                                </div>
                            </li>
                            <li class="icon_holder col-xs-2">
                                <div class="step_icon animated fadeIn wow">
                                    <img src="{$asset}/img/Step1.png" alt="">
                                </div>
                            </li>
                            <li class="text_container text_mobile">
                                <div class="step_text text_left">
                                    <p class="text_blue animated fadeInLeft wow">1: CREEAZĂ UN CONT</p>
                                    <p class="text_grey delay animated fadeInLeft wow">ȘI BUCURĂ-TE DE JOCURI ȘI PREMII</p>
                                </div>
                            </li>
                        </ul>
                    </a>
                    <div class="clearfix"></div>
                    <div class="line animaded fadeInDown wow"></div>
                    <div class="clearfix"></div>
                    <a href="{$cta.casino}" class="step_link">
                        <ul class="step step_two">
                            <li class="text_container text_desktop col-xs-5">
                                <div class="step_text text_left">
                                    <p class="text_blue animated fadeInLeft wow">2: ÎȚI DUBLĂM PRIMA DEPUNERE</p>
                                    <p class="text_grey delay animated fadeInLeft wow">PÂNĂ LA 800 RON BONUS</p>
                                </div>
                            </li>
                            <li class="icon_holder col-xs-2">
                                <div class="step_icon animated fadeIn wow">
                                    <img src="{$asset}/img/Step2.png" alt="">
                                </div>
                            </li>
                            <li class="text_container text_mobile">
                                <div class="step_text text_left">
                                    <p class="text_blue animated fadeInLeft wow">2: ÎȚI DUBLĂM PRIMA DEPUNERE</p>
                                    <p class="text_grey delay animated fadeInLeft wow">PÂNĂ LA 800 RON BONUS</p>
                                </div>
                            </li>
                            <li class="text_container col-xs-5">
                                <div class="step_text text_right">
                                    <p class="text_blue animated fadeInRight wow">...PLUS UN PREMIU GRATUIT GARANTAT PE ZI!</p>
                                    <p class="text_grey delay animated fadeInRight wow">ÎNTRE 1 ȘI 24 DECEMBRIE</p>
                                </div>
                            </li>
                        </ul>
                    </a>
                    <div class="clearfix"></div>
                    <div class="line animaded fadeInDown wow"></div>
                    <div class="clearfix"></div>
                    <a href="{$cta.casino}" class="step_link">
                        <ul class="step step_three">
                            <li class="empty col-xs-5"></li>
                            <li class="icon_holder col-xs-2">
                                <div class="step_icon animated fadeIn wow">
                                    <img src="{$asset}/img/Step3.png" alt="">
                                </div>
                            </li>
                            <li class="text_container col-xs-5">
                                <div class="step_text text_right">
                                    <p class="text_blue animated fadeInRight wow">3: JOACĂ PE NETBET CAZINO</p>
                                    <p class="text_grey delay animated fadeInRight wow">ALEGE DIN PESTE 1000 DE JOCURI!</p>
                                </div>
                            </li>
                        </ul>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <div class="clearfix"></div>


    <footer>
        <section id="terms" class="bg-darkgrey">
            <div class="container">
                <div class="row terms">
                    <div class="col-xs-11 ">
                        <br>
                        <p class="pull-left terms">
                            <a href="#modal">
                                <span class="text-dark-grey">* Se Aplică Termeni și condiții</span>

                            </a>
                        </p>

                        <br>

                    </div>
                </div>
            </div>
        </section>
    <section id="footer" class="bg-darkgrey">
        <div class="container">
            {include file="lab/organisms/footer/footer-main.tpl"}
        </div>
    </section>
    </footer>

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

    <script type="text/javascript" src="src/js/remodal.min.js"></script>
    <script src="src/js/wow.js"></script>
    <script src="{$asset}/main.js"></script>

    <script>
        $(function(){
            $("#modal1Desc").load("terms.html");
        });
        $("body").addClass('{$lang}');
    </script>
{/block}


