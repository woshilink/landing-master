{extends file="base/base.tpl"}
{block name=title}
    {$brand|capitalize} {$product|capitalize} {* Editable title of landing pages *}
{/block}
{block name=head}

    <link href="{$asset}/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/main.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">

    <style>
        .main {
            background-image: url('{$img.bg}');
        }
        .offscreen{
            position: absolute;
            margin-top: -5000px;
        }

        @font-face {
            font-family: Babas Neue;
            src: url("src/fonts/BebasNeue.otf");
        }
        .main{
            background-image: url('{$asset}/bg.jpg');
            background-position: bottom;
            background-repeat: no-repeat;
            background-size: cover;
            height: 450px;
        }
        #terms{
            margin-top: 20px;
        }


    </style>
{/block}
{block name=body}
    {assign "lpconf" "{$smarty.current_dir}/{$lang}/lp.conf"}
    {config_load file=$lpconf}
    <section id="main-nav">
        <nav class="navbar black-transparent">
            <div class="container-fluid">
                {include file="lab/organisms/nav/nav-main.tpl" link=$cta.poker}
            </div>
        </nav>
    </section>
    <a href="{$cta.poker}" rel="nofollow">
        <section class="main">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-6 col-sm-5  pull-right">

                        <div class="offer" >

                            {if $lang == 'de'}
                                <h1>20€ Cash</h1>
                                <h1> GRATIS</h1>
                                <h2>auf Ihre 1. Einzahlung!</h2>
                                <h2><span>Bonuscode: FREE20 </span></h2>

                            {elseif $lang == 'es'}
                                <h1>$20 Cash</h1>
                                <h1> GRATIS</h1>
                                <h2><span>CÓDIGO FREE20</span></h2>

                            {elseif $lang == 'fr'}
                                <h1>20 € Cash GRATUITS</h1>
                                <h2>Sur votre premier dépôt</h2>

                            {elseif $lang == 'el'}
                                <h1><span>Μπόνους</span> </h1>
                                <h3>Καλωσορίσματος</h3>
                                <h3>Τριπλασιάστε </h3>
                                <h3>τα χρήματά</h3>
                                <h3>σας έως και </h3>
                                <h1><span>€1.500</span></h1>

                            {elseif $lang == 'ro'}
                                <h1>€20 Cash GRATIS</h1>
                                <h2>Deschide un cont şi</h2>
                                <h2>fă primul depozit pe site</h2>

                            {elseif $lang == 'ru'}
                                <h1>€20 БЕСПЛАТНО</h1>
                                <h2>После того как вы сделаете</h2>
                                <h2>свой первый депозит</h2>

                            {else}
                                <h1>€20 Cash </h1>
                                <h1>for FREE</h1>
                                <h2>for your first deposit</h2>
                                <h2><span>Bonuscode: FREE20 </span></h2>
                            {/if}
                        </div>
                    </div>
                </div>
                <!-- end of offer row -->
                <div class="row">
                    <div class="col-xs-6 col-sm-5  pull-right">
                        <div class="button">
                            {if $lang == 'de'}
                                <div  class="CTA-button center-block">SPIELEN</div>
                            {elseif $lang == 'fr'}
                                <div  class="CTA-button center-block">JOUER</div>
                            {elseif $lang == 'es'}
                                <div  class="CTA-button center-block">JUEGA AHORA</div>
                            {elseif $lang == 'el'}
                                <div  class="CTA-button center-block">ΠAIΞTE TΩPA</div>

                            {elseif $lang == 'ro'}
                                <div  class="CTA-button center-block" style="text-transform: uppercase;">jucaţi acum</div>
                            {elseif $lang == 'ru'}
                                <div  class="CTA-button center-block" style="text-transform: uppercase;">играть</div>
                            {else}
                                <div  class="CTA-button center-block">PLAY NOW</div>
                            {/if}
                        </div>
                    </div>

                </div>
                <!-- end of button row -->

            </div>
            <!-- end of main container -->

        </section>
    </a>
    <!-- end of main section -->

    <a href="{$cta.poker}" rel="nofollow">
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
    <section id="terms">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-11 >
                    <p class="pull-left">
                        <a href="#modal" class="text-white">
                            <span>{#terms#}</span>

                        </a>
                    </p>
                </div>
            </div>
        </div>
    </section>
    <section id="footer" class="bg-darkgrey">
        <div class="container-fluid">
            {include file="lab/organisms/footer/footer-main.tpl"
            responsible_text_header=#footer_responsible_text#|upper
            payment_text_header=#footer_payment_text#|upper
            }
        </div>
    </section>


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

{/block}



