{extends file="base/base.tpl"}
{block name=title}
    Netbet {$product|ucfirst}
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
        .navbar {

            background-color: black;
        }
    </style>
{/block}
{block name=body}
    <div class="container-fluid">
        <p>Il gioco è riservato ai maggiorenni e può creare dipendenza patologica.</p>
    </div>

    <nav class="navbar">
        <div class="container-fluid">
            <div class="row">
                <div id="logo" class="col-xs-6 col-sm-3 ">
                    <a href="{$cta.casino}" rel="nofollow">
                        <img src="src/img/netbet/logo.png" alt="NetBet" class="pull-left img-responsive" >
                    </a>
                </div>
                <div class="col-xs-4 text-center hidden-xs custom-text">
                    <h4 style="color: white;">{$text}</h4>
                </div>
                <!-- Co logo -->

                <div class="col-xs-6 col-sm-5 logo">
                    <a href="{$cta.casino}" rel="nofollow">
                        {if $lp == 'bonus-casino2k' || $lp == 'offerta_speciale' || $lp =='bonus-casinoinrete' || $lp == 'starburst-slots' || $lp == 'bonus-esclusivi' || $lp == 'bonus-auraweb'}

                        {else}
                            <img src="{$asset}/img/newlogo.png" alt="NetBet" class="pull-left img-responsive" >
                        {/if}
                        <div class="registrati hidden-xs pull-right"><h4>REGISTRATI ORA <i class="glyphicon glyphicon-play"></i></h4></div>
                    </a>
                </div>
                <!-- end of co logo -->


            </div>
        </div>
    </nav>
    <!-- end of NAV -->
    <!-- end of NAV -->

        <section class="main">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-7 hidden-xs ">
                        <div class="girl">
                            <a href="{$cta.casino}" rel="nofollow">

                                <img src="{$asset}/img/girl.png" alt="" class="img-responsive center-block">

                            </a>
                        </div>

                    </div>
                    <div class="col-xs-12 col-sm-5  col-md-5 pull-right">

                        <div class="offer" >


                            <a href="{$cta.casino}" rel="nofollow">
                                {if $lp == 'offerta_speciale' || $lp == 'starburst-slots'}
                                    <img src="{$asset}/img/offer.gif" alt="" class="img-responsive center-block">
                                {else}
                                    <img src="{$asset}/img/offer.png" alt="" class="img-responsive center-block">
                                {/if}
                            </a>
                        </div>
                        <div class="col-xs-12 text-right hidden-xs">
                            <br>
                            <p  class="hidden-xs terms">
                                <a href="#modal" rel="nofollow">Termini e Condizioni </a>
                            </p>

                            <br>

                        </div>

                    </div>
                </div>
                <!-- end of offer row -->
                <div class="row terms">

                </div>
                <!-- end of terms and condition large screen row -->
                <div class="steps">
                    <div class="row">
                        <div class="col-xs-12 hidden-xs">
                            <a href="{$cta.casino}" rel="nofollow">
                                <img src="{$asset}/img/steps.png" alt="" class="img-responsive center-block steps-d">

                            </a>
                        </div>
                    </div>
                    <!-- end of lage screen steps -->

                    <div class="row">
                        <div class="col-xs-12 visible-xs">
                            <a href="{$cta.casino}" rel="nofollow">
                                <div id="step1" class="step">

                                    <div class="row">
                                        <div class="col-xs-2 step-num">
                                            1
                                        </div>
                                        {if $lp == 'offerta_speciale' || $lp == 'starburst-slots'}
                                            <div class="col-xs-10">
                                                <div class="step-title">REGISTRATI</div>
                                                <div class="step-text">GRATIS</div>
                                            </div>
                                        {else}
                                            <div class="col-xs-10">
                                                <span class="step-title">ISCRIVITI GRATIS</span><br>
                                                <span class="step-text"></span>
                                            </div>
                                        {/if}
                                    </div>

                                </div>
                                <!-- Step 1-->
                                <div id="step2" class="step">
                                    <div class="row">
                                        <div class="col-xs-2 step-num">
                                            2
                                        </div>
                                        {if $lp == 'starburst-slots'}
                                            <div class="col-xs-10">
                                                <div class="step-title">RICEVI 20 SPIN</div>
                                                <div class="step-text">SU STARBURST</div>
                                            </div>
                                        {elseif $lp == 'offerta_speciale'}
                                            <div class="col-xs-10">
                                                <div class="step-title">RICEVI 25 SPIN</div>
                                                <div class="step-text">SU STARBURST</div>
                                            </div>
                                        {else}
                                            <div class="col-xs-10">
                                                <span class="step-title">CONVALIDA</span><br>
                                                <span class="step-text">l tuo conto gioco</span>
                                            </div>
                                        {/if}
                                    </div>
                                </div>
                                <!-- Step 2-->
                                <div id="step3" class="step">
                                    <div class="row">
                                        <div class="col-xs-2 step-num">
                                            3
                                        </div>
                                        {if $lp == 'offerta_speciale' || $lp == 'starburst-slots'}
                                            <div class="col-xs-10">
                                                <div class="step-title">DEPOSITA</div>
                                                <div class="step-text">E RICEVI UN BONUS FINO A 1000€</div>
                                            </div>
                                        {else}
                                            <div class="col-xs-10">
								<span class="step-title">
									{if $lp == 'bonus-casino2k' || $lp == 'bonus-casinoinrete' || $lp == 'bonus-auraweb' || $lp == 'bonus-esclusivi'}RICEVI 25€ {else}RICEVI 20€ {/if}
								</span>
                                                <br>
                                                <span class="step-text">per provare tutti i nostri giochi</span>
                                            </div>
                                        {/if}
                                    </div>
                                </div>
                                <!-- Step 3-->
                            </a>
                        </div>
                    </div>
                    <!-- end of small sreen steps -->
                </div>
                <!-- Steps large and small screen-->
                <section id="footer" class="bg-darkgrey">
                    <div class="container">
                        {include file="lab/organisms/footer/footer-main.tpl"
                        responsible_text_header = #responsible_text_header#
                        payment_text_header = #payment_text_header#
                        payment_methods = $content.payment_methods
                        responsibles = $content.responsibles
                        }
                    </div>
                </section>

            </div>
            <!-- end of main container -->

        </section>
    <!-- end of main section -->

    <a href="{$cta.casino}" rel="nofollow">
        <section class="steps">
            <div class="container-fluid">
                <div class="row visible-xs">
                    <div class="text-center">
                        <h3>{$text}</h3>
                    </div>
                </div>

            </div>

        </section>
    </a>
    <!-- end of steps section -->

    <section class="terms">
        <div class="container-fluid">


            <div class="row terms">
                <p id="terms_mobile" class="visible-xs text-center terms">
                    <br>

                    <a href="#modal" rel="nofollow">Termini e Condizioni </a>

                </p>
            </div>
            <!-- end of ters and condition small screen row -->
        </div>
    </section>




    <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
        <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
        <div>
            {if $lp == 'offerta_speciale' || $lp == 'starburst-slots'}
                {include file="pages/landing/{$domain}/terms/{$product}/welcome-offer/terms.tpl"}
            {else}
                {include file="pages/landing/{$domain}/terms/{$product}/affiliate-offer/terms.tpl"}
            {/if}
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









