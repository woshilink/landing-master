{extends file="base/base.tpl"}
{block name=title}
    {$name|capitalize} {$product|capitalize} {* Editable title of landing pages *}
{/block}
{block name=head}
    <link rel="icon" type="image/png" href="favicon.ico">
    <!-- Bootstrap -->
    <link href="landing/cats/src/css/bootstrap.min.css" rel="stylesheet">
    <link href="footer.css" rel="stylesheet">
    <link href="landing/cats/src/css/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="landing/cats/src/css/remodal.css">
    <link rel="stylesheet" href="landing/cats/src/css/remodal-default-theme.css">

    <style>
        .main {
            background-image: url('../template/templates/vegas/{$lp}/{$lang}/bg.jpg');
            background-position: center;
            background-size: cover;
        }

        /* Small Devices, Tablets */
        @media only screen and (max-width : 992px) {
            .main {
                height: 540px;
            }
        }
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
    {include file="all_head.tpl" }
{/block}
{block name=body}
    {$gtm}
    {include file="gamma.tpl" }
    <section class="header">
        <nav class="navbar">
            <div class="container-fluid">
                <div class="row">

                    {if $text || $co_logo}
                        <div id="logo" class="col-xs-6 col-sm-4 ">

                            <img src="img/logo.png" alt="NetBet" class="pull-left img-responsive" >

                        </div>
                        <div class="col-xs-4 text-center hidden-xs custom-text">
                            <h4 style="color: white;">{$text}</h4>
                        </div>

                        <!-- Co logo -->
                        {if $co_logo}
                            <div class="col-xs-6 col-sm-4 co-logo">
                                <img src="{$co_logo}" class="img-responsive center-block" alt="">
                            </div>
                            <!-- end of co logo -->
                        {/if}

                    {else}
                        <div id="logo" class="col-xs-offset-3 col-xs-6 col-sm-offset-0 col-sm-4">

                            <img src="img/logo.png" alt="NetBet" class="center-block img-responsive" >

                        </div>
                    {/if}


                </div>
            </div>
        </nav>
    </section>
    <!-- End of header  -->
    <a href="{$url}" rel="nofollow">
        <section class="main hidden-xs">


            <div class="container-fluid hidden-xs">
                <div class="row">
                    <div class="col-xs-7 col-sm-5 pull-right">

                        <div class="offer" >
                            <!-- Add offer here-->
                            <!--<img src="../template/templates/vegas/{$lp}/{$lang}/offer.png" class="img-responsive pull-right" />-->

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

        </section>
        <section class="mobile visible-xs">
            <div class="container-fluid">
                <div class="row">

                    <div class="col-xs-12">
                        <img src="../template/templates/vegas/{$lp}/{$lang}/mobile.jpg" class="img-responsive center-block" />
                        <!--<img src="../template/templates/vegas/{$lp}/{$lang}/offer-mobile.png" class="img-responsive center-block" />-->

                    </div>
                </div>
            </div>
        </section>
        <!--  End of mobile section -->
    </a>
    <!-- end of main section -->

    <a href="{$url}" rel="nofollow">
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
                                    <img src="../template/templates/vegas/{$lp}/{$lang}/steps.png" alt="" class="img-responsive center-block">
                                </div>
                            </div>
                            <!-- end of lage screen steps -->


                        </div>

                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-12 visible-xs">
                        <img src="../template/templates/vegas/{$lp}/{$lang}/steps_mobile.jpg" alt="" class="img-responsive center-block">
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

                    {if $lang == 'de'}
                        <a href="https://vegas.netbet.de/freespins_de">
                     {elseif $lang == 'pt-BR'}
                        <a href="https://vegas.netbet.com/br/welcome500_br">

                        {else}
                        <a href="https://vegas.netbet.com/{$lang}/welcome_{$lang}">
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
                            {elseif $lang == 'pt-BR'}
                                <span>* Termos & Condições</span>
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
                        <a href="https://vegas.netbet.com/ja/freespins_ja" target="_blank">
                            <p style="color: white">利用規約</p>
                        </a>
                    </div>
                </div>
            </div>
        </section>
    {/if}
    {if $lang == 'ie'}
        {include file="footer_en_v2.tpl" }
    {elseif $lang == 'ja'}
        <footer class="footer-text">
            <div class="container">
                {include file="lab/templates/ja/footer/footer.tpl" }
            </div>
        </footer>
    {else}
        {include file="footer_{$lang}_v2.tpl" }
    {/if}
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


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="landing/cats/src/js/bootstrap.min.js"></script>
    <script src="landing/cats/src/js/remodal.min.js"></script>

    <script>
        $(function(){
            {if $lang == 'ie'}
            $("#modal1Desc").load("en/cats-terms.html");
            {else}
            $("#modal1Desc").load("{$lang}/cats-terms.html");
            {/if}
        });
    </script>
{/block}
