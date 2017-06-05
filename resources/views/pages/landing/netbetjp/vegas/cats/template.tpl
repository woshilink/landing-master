{extends file="base/base.tpl"}
{block name=title}
    {$brand|capitalize} {$product|capitalize}
{/block}
{block name=head}
    <link href="{$asset}/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/main.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">

    <style>
        .tc:hover{
            color: #fff;
        }

        .main {
            background-image: url('{$asset}/bg.jpg');
        }



        /* Small Devices, Tablets */
        @media only screen and (max-width : 767px) {
            .main {
                background-image: none;
            }
        }

        .offscreen{
            position: absolute;
            margin-top: -5000px;
        }
        .terms{
            display: none;
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

    <a href="{$cta.casino}"><section class="main">
            <div class="container-fluid hidden-xs">
                <div class="row">
                    <div class="col-xs-7 col-sm-5 pull-right">
                        <div class="offer" >
                            <!-- Add offer here-->
                            {if $lp == 'cats'}
                                <!--<img src="landing/cats/offer.png" class="img-responsive pull-right" />-->
                            {else}
                                <!--<img src="landing/cats/{$lp}/offer.png" class="img-responsive pull-right" />-->
                            {/if}
                        </div>
                        <!--<p class="text-center"><a style="color: #fff; text-shadow: 1px 1px #000;" href="#modal" class="tc">New player only, 10 no deposit Free Spins, Welcome Bonus up to £500, £10+ Deposit required, 50x wagering and T&Cs apply</a></p>-->
                    </div>
                </div>
                <!-- end of offer row -->
                <div class="row">
                    <div class="col-xs-7 pull-right">

                    </div>

                </div>
                <!-- end of button row -->

            </div>
            <!-- end of main container -->

        </section></a>

    <section class="mobile visible-xs">
        <div class="container-fluid">
            <div class="row">

                <div class="col-xs-12">
                        <img src="{$asset}/mobile.jpg" class="img-responsive center-block" />
                        <!--<img src="landing/cats/offer-mobile.png" class="img-responsive center-block" />-->
                </div>
                <p class="text-center hidden-xs">New Players only, no deposit required, wagering &amp;<a href="https://vegas.netbet.co.uk/freespins_gb" rel="nofollow" target="_blank"> T&amp;C's</a> Apply</p>
            </div>
        </div>
    </section>
    <!--  End of mobile section -->

    <!-- end of main section -->


    <section class="steps-sec">
        <div class="container-fluid">
            <div class="row visible-xs">
                <div class="text-center">
                    <h3>{$text}</h3>
                </div>
            </div>
            <div class="row">
                <div class="steps">

                    <div class="container-fluid">
                        <a href="{$cta.casino}" rel="nofollow">
                            <div class="row">
                                <div class="col-xs-12 hidden-xs">
                                        <img src="{$asset}/steps.png" alt="" class="img-responsive center-block">

                        </a>
                    </div>
                </div>
                <!-- end of lage screen steps -->


            </div>

        </div>
        </div>

        <div class="row">
            <div class="col-xs-12 visible-xs">

                    <img src="{$asset}/steps_mobile.jpg" alt="" class="img-responsive center-block" style="margin-top: 40px;">

            </div>
        </div>
        <!-- end of small sreen steps -->

        </div>

    </section>

    <!-- end of steps section -->
    <section class="tc">
        <div class="container-fluid">
            <div class="row">
                <div  class="col-xs-12">
                    {if $lang == 'de'}
                    <a href="https://vegas.netbet.de/freespins_de">
                        {elseif $lang == 'ie'}
                        <a href="https://vegas.netbet.ie/freespins_eu">
                            {else}
                            <a href="https://vegas.netbet.com/{$lang}/freespins_{$lang}">
                                {/if}
                                {if $lang == 'es'}
                                    <span>*Términos y condiciones</span>
                                {elseif $lang == 'de'}
                                    <span>* Teilnahmebedingungen</span>
                                {elseif $lang == 'ro'}
                                    <span>* Termeni și condiții</span>
                                {elseif $lang == 'nl'}
                                    <span>* Algemene voorwaarden</span>
                                {elseif $lang == 'fr'}
                                    <span>* Conditions Générales</span>
                                {elseif $lang == 'ja'}
                                {elseif $lang == 'el'}
                                    <span>* Όροι και Συνθήκες</span>
                                {else}
                                    <span>* Terms &amp; Conditions</span>
                                {/if}

                            </a>
                </div>
            </div>
        </div>
    </section>
    {if $lang == 'ja'}


    <section id="terms">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <a href="https://vegas.netbet.com/ja/signupspins_ja" target="_blank">
                        <p style="color: white">利用規約</p>
                    </a>
                </div>
            </div>
        </div>
    </section>
    {/if}
    <section id="footer" class="bg-darkgrey">
        <div class="container">
            {include file="lab/organisms/footer/footer-main.tpl"}
        </div>
    </section>
    <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
        <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
        <div>
            <p id="modal1Desc"></p>
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



