{extends file="base/base.tpl"}
{block name=title}
    {$brand|capitalize} {$product|capitalize} {* Editable title of landing pages *}
{/block}
{block name=head}
    <link href="{$asset}/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/main.css">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">

    <style>
        .main {
            background-image: url('{$asset}/{$lang}/bg.jpg');
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
    {assign "lpconf" "{$smarty.current_dir}/{$lang}/lp.conf"}
    {config_load file=$lpconf}

        <section class="main ">
            <section id="main-nav">
                <nav class="navbar">
                    <div class="container-fluid">
                        {include file="lab/organisms/nav/nav-main.tpl" text=$text link=$cta.casino}
                    </div>
                </nav>
            </section>
            <!-- end of NAV -->
            <a href="{$cta.casino}" rel="nofollow">
            <div class="container-fluid hidden-xs">
                <div class="row">
                    <div class="col-xs-7 col-sm-5 pull-right">
                        <div class="offer" >
                            <!-- Add offer here-->
                            <img src="{$asset}/{$lang}/offer.png" class="img-responsive pull-right" />
                        </div>
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
            </a>
        </section>
        <section class="mobile visible-xs">
            <div class="container-fluid">
                <div class="row">

                    <div class="col-xs-12">
                        <img src="{$asset}/{$lang}/mobile.jpg" class="img-responsive center-block" />
                        <img src="{$asset}/{$lang}/offer-mobile.png" class="img-responsive center-block" />

                    </div>
                </div>
            </div>
        </section>
        <!--  End of mobile section -->

    <!-- end of main section -->

    <a href="{$cta.casino}" rel="nofollow">
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

                            <div class="row">
                                <div class="col-xs-12 hidden-xs">
                                    <img src="{$asset}/{$lang}/steps.png" alt="" class="img-responsive center-block">
                                </div>
                            </div>
                            <!-- end of lage screen steps -->


                        </div>

                    </div>
                </div>

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
    <section class="tc">
        <div class="container-fluid">
            <div class="row">
                <div  class="col-xs-12">
                    <a href="#modal">
                        {if $lang == 'de'}
                            <span>* Teilnahmebedingungen</span>
                        {elseif $lang == 'ro'}
                            <span>* Termeni și condiții</span>
                        {elseif $lang == 'nl'}
                            <span>* Algemene voorwaarden</span>
                        {elseif $lang == 'fr'}
                            <span>* Conditions Générales</span>
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
    <section id="footer" class="bg-darkgrey">
       <footer>
           <div class="container-fluid">
               {include file="lab/organisms/footer/footer-main.tpl"
               responsible_text_header = #responsible_text_header#
               payment_text_header = #payment_text_header#}
           </div>
       </footer>
    </section>
    <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
        <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
        <div>
            {include file="pages/landing/{$domain}/terms/{$product}/slot/{$lang}/terms.tpl"}
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


