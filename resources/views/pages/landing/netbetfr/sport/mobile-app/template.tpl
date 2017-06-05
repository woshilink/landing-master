

{extends file="base/base.tpl"}
{block name=title}
    Netbet {$product|capitalize}
{/block}
{block name=head}
    <link href="{$asset}/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/main.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">

    <style>
        {if $lp}
        .main {
            background-image: url('{$asset}/bg.jpg');
        }
        {else}
        .main {
            background-image: url('//go.livepartners.com/go.images/netbet/sport/110/bg2.jpg');
        }
        {/if}
        .offscreen{
            position: absolute;
            margin-top: -5000px;
        }
    </style>
{/block}
{block name=body}
    <div class="container text-center">
        <p style="color: white">{$legal_text}</p>
    </div>

    <section id="main-nav">
        <nav class="navbar black-transparent ">
            <div class="container-fluid">
                {include file="lab/organisms/nav/nav-main.tpl" domain='netbetcouk' }
            </div>
        </nav>
    </section>
    <a href="{$url}" rel="nofollow">
        <section class="main">
            <div class="container-fluid">
                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-5  pull-right">
                    <div class="box">
                        <div class="row">


                            <div class="offer" >

                                <img src="{$asset}/offer.png" class="img-responsive center-block" alt="Offer">

                            </div>

                        </div>
                        <!-- end of offer row -->
                        <div class="row">

                            <div class="button hidden-xs">
                                <img src="{$asset}/button.png" class="img-responsive center-block " alt="">
                                <div class="col-xs-offset-2">
                                    <p>*Voir conditions sur le site</p>
                                </div>

                            </div>


                        </div>
                        <!-- end of button row -->
                    </div>
                    <!--  End of box-->
                </div>
            </div>
            <!-- end of main container -->

        </section>
    </a>
    <!-- end of main section -->

    <a href="{$url}" rel="nofollow">
        <section class="mobile visible-xs">
            <div class="container">
                <div class="row">
                    <div class="button ">
                        <img src="{$asset}/button.png" class="img-responsive center-block" alt="Bet Now">
                        <div>
                            <p>*Voir conditions sur le site</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="steps">
            <div class="container-fluid">
                {if $text}
                    <div class="row visible-xs">
                        <div class="text-center">
                            <h3>{$text}</h3>
                        </div>
                    </div>
                {/if}
                <div class="row ">
                    <div class="col-xs-12 end  visible-xs">
                        <img src="{$asset}/text.png" class="img-responsive center-block" alt="">

                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-12 hidden-xs">
                        <img src="{$asset}/steps.png" alt="" class="img-responsive center-block">
                    </div>
                </div>
                <!-- end of lage screen steps -->

                <div class="row">
                    <div class="col-xs-12 visible-xs">
                        <img src="{$asset}/steps_mobile.png" alt="" class="img-responsive center-block">
                    </div>
                </div>
                <!-- end of small sreen steps -->
            </div>

        </section>
    </a>
    <!-- end of steps section -->
    <section class="terms">
        <div class="container-fluid">

            <div class="row">

                <div class="col-md-12 ">


                    <center>
                        <p id="terms_mobile" class=" text-center">
                            <br>
                            <a href="#modal" rel="nofollow" style="font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-size: 12px; color:#8F8F8F;">* <span style="text-decoration: underline;">Conditions sur NetBet.fr</span></a>
                            <br>
                        </p>
                    </center>
                    <br>

                </div>
            </div>
        </div>
    </section>

    <div class="container-fluid">
        <p class="top-text visible-xs">
            *voir conditions sur le site Jouer comporte des risques : endettement, dépendance… Appelez le 09-74-75-13-13 (appel non surtaxé).
        </p>
    </div>

    <section id="footer" class="text-center">
        <div class="container-fluid">
            {include file="lab/organisms/footer/footer-main.tpl"
            responsible_text_header = #responsible_text_header#
            payment_text_header = #payment_text_header#
            payment_methods = $content.payment_methods
            responsibles = $content.responsibles
            }
        </div>
    </section>


<div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
    <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
    <div>
        {include file="pages/landing/{$domain}/terms/welcome-offer/terms.tpl"}
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
            $("#modal1Desc").load("terms.html");

        });
    </script>

{/block}




