{extends file="base/base.tpl"}
{block name=title}
    {$brand|capitalize} {$product|capitalize} {* Editable title of landing pages *}
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


        @font-face {
            font-family: Bebas Avenu;
            src: url("src/fonts/BebasNeue.otf");
        }
        .main {
            background-image: url('{$asset}/bg.png');
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
            <div class="container-fluid">
                {include file="lab/organisms/nav/nav-main.tpl" text=$text}
            </div>
        </nav>
    </section>
    <!-- end of NAV -->

    <a href="{$cta.casino}" rel="nofollow">
        <section class="main hidden-xs">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-5 pull-right">

                        <div class="offer" >
                            <img src="{$asset}/{$lang}/offer.png" alt="" class="img-responsive center-block">
                        </div>
                    </div>
                </div>
                <!-- end of offer row -->
                <div class="row">
                    <div class="col-xs-6 col-sm-5  pull-right">
                        <div class="button">
                            {if $lang == 'de'}
                                <img src="{$asset}/{$lang}/button.png" alt="" class="img-responsive center-block">
                            {else}
                                <div  class="CTA-button center-block">PLAY <span>NOW</span></div>
                            {/if}
                        </div>
                    </div>

                </div>
                <!-- end of button row -->

            </div>
            <!-- end of main container -->

        </section>
        <section id="mobile" class="visible-xs">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <img src="{$asset}/{$lang}/mobile.jpg" alt="" class="img-responsive center-block">
                    </div>
                </div>
            </div>
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
            <div class="row terms">
                <div class="col-xs-11 ">
                    <br>
                        <a href="#modal">
                            {if $lang == 'fr'}
                            <p class="text-white">*Termes et Conditions</p>
                            {elseif $lang == 'nl'}
                            <p class="text-white">*Algemene voorwaarden</p>
                            {elseif $lang == 'de'}
                            <p class="text-white">* Teilnahmebedingungen</p>
                            {else}
                            <p class="text-white">*Terms & Condition</p>
                            {/if}
                        </a>

                    <br>

                </div>
            </div>
        </div>
    </section>

    <section id="footer" class="bg-darkgrey">
        <div class="container-fluid">
            {include file="lab/organisms/footer/footer-main.tpl"}
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


