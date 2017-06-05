{extends file="base/base.tpl"}
{block name=title}
    Netbet {$product|capitalize}
{/block}
{block name=head}

    <link href="{$asset}/styles.css" rel="stylesheet">
    <link href="src/css/main.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">
    <style>
        .navbar {
            background-image: url('src/img/blue-header.jpg');
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
        }
        .main {
            background-image: url('{$asset}/bg.png');
            background-size: cover;
            background-position: center;
            height: 458px;
        }
        .offscreen{
            position: absolute;
            margin-top: -5000px;
        }
        @media only screen and (min-width: 1920px){
            .main {
                background-size: cover;
                background-position: 0 40%;
            }
        }
        @media only screen and (max-width : 768px) {
            .main {
                height: auto;
            }
        }
        {if $lp == 'ruiz-2015'}
        .offer {
            margin-top: 10px;
        }
        {elseif $lp == '10free' }
        .offer {
            margin-top: 20px;
        }
        {elseif  $lp == '5free'}
        .offer {
            margin-top: 15px;
            padding: 5px;
        }
        {elseif  $lp == 'kjp10-2'}
        .offer {
            margin-top: 0px;
            padding: 5px;
        }
        {/if}

    </style>
{/block}
{block name=body}

    <div class="container text-center">
        <p style="color: white">{$legal_text}</p>
    </div>
    <section id="main-nav">
        <nav class="navbar black-transparent ">
            <div class="container-fluid">
                {include file="lab/organisms/nav/nav-main.tpl" }
            </div>
        </nav>
    </section>

    <section class="main">
        <div class="container-fluid">
            <div class="row main-top" >
                {if $lp == '10free' || $lp == '5free' || $lp == 'kjp10-2'}

                    <div class="col-xs-12 col-sm-9 hidden-xs" >
                        <div class="offer">
                            <img src="{$asset}/offer.png" alt="ASSE logo" class="img-responsive center-block">
                        </div>
                    </div>
                    <div class="col-xs-12  visible-xs" >
                        <div class="mobile-text">
                            <!--<img src="{$asset}/text.png" alt="ASSE logo" class="img-responsive center-block">-->
                        </div>
                    </div>
                    <div class="col-xs-12 visible-xs" >
                        <div class="mobile-offer">
                            <img src="{$asset}/top.png" alt="ASSE logo" class="img-responsive center-block">
                        </div>
                    </div>
                    <div class="col-xs-12 visible-xs" >
                        <div class="mobile-offer">
                            <img src="{$asset}/bottom.png" alt="ASSE logo" class="img-responsive center-block">
                        </div>
                    </div>
                {else}
                    <div class="col-xs-4 hidden-xs" >
                        <div class="asse-logo">
                            <img src="{$asset}/asse-logo.png" alt="ASSE logo" class="img-responsive">
                        </div>
                    </div>
                    <div class="col-xs-12 {if $lp == 'ruiz-2015'}col-sm-8 {else}col-sm-5{/if}">

                        <div class="offer" >

                            <img src="{$asset}/offer.png"  class="img-responsive center-block">

                        </div>
                        <!-- end of offer row -->
                    </div>
                {/if}
                <!-- end off the offer -->
                {if $lp == 'ruiz-2015'}
                {else}
                    <div class="col-xs-12 col-sm-3">
                        <div class="form">
                            <h2 class="text-center"style="text-transform: uppercase;">inscription</h2>
                            <form class="center-block" id="form1" method="get"  action="https://netbetsport.fr/compte/inscription">
                                <input class="center-block" type="text" name="fname" placeholder="1er prénom">
                                <input class="center-block" type="text" name="lname" placeholder="Nom">
                                <input class="center-block" type="text" name="email" placeholder="Adresse email">
                                {if $lp == 'packshot' || $lp == '10free'}
                                    <input class="center-block" type="text" name="bonus" placeholder="10FREE" disabled>
                                {elseif $lp == '5free'}
                                    <input class="center-block" type="text" name="bonus" placeholder="5VIP" disabled>
                                {elseif  $lp == 'kjp10-2' }
                                    <input class="center-block" type="text" name="bonus" placeholder="KJP10" disabled>
                                {else}
                                    <input class="center-block" type="text" name="bonus" placeholder="ASSE5" disabled>
                                {/if}
                            </form>
                            <!-- End of form -->
                        </div>



                    </div>
                    <!-- End of reg form -->
                {/if}
            </div>
            <div class="row">


            </div>
            <div class="row visible-xs">
                <div class="col-xs-12">
                    <div class="button">
                        <a href="{$cta.sport}" class="button1">
                            <img src="{$asset}/button.png" alt="Rejoignez-nous!" class="img-fill" style="width: 215px;">
                        </a>
                    </div>
                </div>

                <!-- end of button row -->


            </div>


            <div class="row clearfix">



                <div class="col-xs-12 col-sm-9">
                    <img src="{$asset}/steps.png"  class="img-responsive center-block" style="margin-bottom: 0.5em;">
                </div>
                <!--  End if steps -->
                <div class="col-xs-3 hidden-xs">
                    <a href="{$cta.sport}" class="button1">
                        <img src="{$asset}/button.png"  class="img-responsive center-block" style="margin-top: 1.1em;">
                    </a>
                    <div class="hidden-xs pull-right" >
                        {if $lp == 'ruiz-2015' || $lp == '10free' || $lp == '5free' || $lp == 'kjp10-2-2'}
                        <a style="color:#fff;font-size:0.7em;text-decoration:underline;" href="https://netbetsport.fr/page/promotion/id/2/?&id={$id}{$postfix}" target="_blank" rel="nofollow">
                            {else}
                            <a style="color:#fff;font-size:0.7em;text-decoration:underline;" href="http://www.livepartners.fr/affiliate/tracking/click/?p=5&l=fr&id=&t=promotion&id={$id}{$postfix}" target="_blank" rel="nofollow">
                                {/if}
                                *Conditions
                            </a>
                    </div>
                    <!-- Terms desktop-->

                </div>

            </div>
            <!-- end of  steps -->

        </div>
        <!-- end of main container -->

    </section>

    <a href="{$cta.sport}" rel="nofollow">
        <section class="infoboxes">

            <div class="container-fluid hidden-xs">
                <div class="row" style="margin-top:1em; margin-bottom:1em;">
                    <a href="{$cta.sport}" rel="nofollow">
                        {if $lp == '5free'}
                            <div class="col-xs-12 col-sm-4">
                                <img src="lp-asset/netbetfr/img/1.png" alt="Vivez les émotions du direct en pariant jusqu'à la dernière minute !" class="img-responsive center-block" style="width:312px;">
                            </div>
                            <div class="col-xs-12 col-sm-4">
                                <img src="lp-asset/netbetfr/img/2.png" alt="Ne manquez plus jamais un match !" class="img-responsive center-block" style="width:312px;">
                            </div>
                            <div class="col-xs-12 col-sm-4">
                                <img src="lp-asset/netbetfr/img/3.png" alt="Profitez des conseils d'un pro du football !" class="img-responsive center-block" style="width:312px;">
                            </div>
                        {else}
                            <div class="col-xs-12 col-sm-4">
                                <img src="lp-asset/netbetfr/img/step1.png" alt="Vivez les émotions du direct en pariant jusqu'à la dernière minute !" class="img-fill center-block" style="max-width:312px;">
                            </div>
                            <div class="col-xs-12 col-sm-4">
                                <img src="lp-asset/netbetfr/img/step2.png" alt="Ne manquez plus jamais un match !" class="img-fill center-block" style="max-width:312px;">
                            </div>
                            <div class="col-xs-12 col-sm-4">
                                <img src="lp-asset/netbetfr/img/step3.png" alt="Profitez des conseils d'un pro du football !" class="img-fill center-block" style="max-width:312px;">
                            </div>
                        {/if}
                    </a>
                </div>
            </div>

        </section>
    </a>
    <!-- end of main section -->

    <a href="{$cta.sport}" rel="nofollow">
        <section class="steps">
            <div class="container-fluid">

            </div>

        </section>
    </a>
    <!-- end of steps section -->

    <div class="container-fluid">
        <p class="top-text visible-xs">
           {$legal_text}
        </p>
    </div>
    <!-- End of legal text -->


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
    <section id="footer" class="blue-footer">
        <div class="container-fluid">
            <div class="row hidden ">
                <div class="terms-text">
                    <div class="col-xs-12" style=" font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif">
                        {*{include file="pages/landing/netbetit/terms/sport/normal/welcome-offer.tpl"}*}
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-12">
                    <a href="" class="text-white">
                        {#terms#}
                    </a>
                </div>
            </div>

            {include file="lab/organisms/footer/footer-main.tpl"
            responsible_text_header = #responsible_text_header#
            payment_text_header = #payment_text_header#
            payment_methods = $content.payment_methods
            responsibles = $content.responsibles
            }
        </div>
    </section>
{/block}
{block name=footer}
    <script src="src/js/remodal.min.js"></script>
    
    <script>
        $(function(){
            $("#modal1Desc").load("terms.html");
        });


        $('.button1').click(function(){


            var val1 = $('[name="fname"]' ).val();
            var val2 = $('[name="lname"]' ).val();
            var val3 = $('[name="email"]' ).val();

            {if $lp == 'packshot' || $lp == '10free'}
            var allpara = '&fname='+val1+'&lname='+val2+'&email='+val3+'&bonuscode=10FREE';
            {elseif $lp == 'ruiz-2015'}
            var allpara = '{$postfix}';
            {elseif $lp == '5free'}
            var allpara = '&fname='+val1+'&lname='+val2+'&email='+val3+'&bonuscode=5VIP';
            {elseif $lp == 'kjp10-2'}
            var allpara = '&fname='+val1+'&lname='+val2+'&email='+val3+'&bonuscode=KJP10';
            {else}
            var allpara = '&fname='+val1+'&lname='+val2+'&email='+val3+'&bonuscode=ASSE5';
            {/if}
            var _href = $(this).attr("href");
            $(this).attr('href', _href + allpara );

        });
    </script>
    <script>
        $(function(){
            $("#modal1Desc").load("terms.html");
        });
    </script>
{/block}




