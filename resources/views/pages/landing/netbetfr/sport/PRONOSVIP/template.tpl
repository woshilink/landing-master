{extends file="base/base.tpl"}
{block name=title}{$brand|capitalize} {$product|capitalize}{/block}
{block name=head}

    <link href="{$asset}/styles.css" rel="stylesheet">
    <link href="src/css/main.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">
    <style>
        .navbar{
            background-image: url('src/img/blue-header.jpg');
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
        }
        .main {
            background-image: url('{$asset}/bg.jpg');
            background-size: cover;
            background-position: center;
            height: 458px;
        }
        @media only screen and (max-width : 767px) {
            .main{
                height: auto;
            }
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
                {include file="lab/organisms/nav/nav-main.tpl" }
            </div>
        </nav>
    </section>
    <section class="main">
        <div class="container-fluid">

            <div class="col-xs-12 col-sm-9">

                <div class="offer" >
                    {if $lp == 'pronostip' || $lp == 'LTMAX' || $lp == 'WEBGIRONDINS' || $lp == 'sportyvip' || $lp == 'epronosfr' || $lp == 'noah' || $lp == 'goal' || $lp == 'conseil' || $lp == 'foot-fr' || $lp == 'madeinfoot' || $lp == 'turf-fr' || $lp == 'duelfoot' || $lp == 'SOFOOT' || $lp == 'EnVertEtContreTous' || $lp == 'Le10sport' || $lp == 'Paris-Team' || $lp == 'RueDesJoueurs' || $lp == 'WEBGIRONDINS' || $lp == 'betteur' || $lp == 'afiliapub' || $lp == 'MEPHISTO' || $lp == 'RDJSOFOOT' || $lp == 'LT-VIP' || $lp == 'TWOB' || $lp == 'SOCCERVIP' || $lp == 'PRONOZEO' || $lp == 'vert-vip' || $lp == 'CPSVIP1' || $lp == 'PRONOSVIP' || $lp == 'sosvip' || $lp == 'bestparis' || $lp == 'NETBMAX' || $lp == 'NETBMAXVIP' || $lp == 'SILVERVIP' || $lp == 'PS2017' || $lp == 'AKAY17' || $lp == 'NYL2VIP' || $lp == 'ADAM100'}
                        <img src="{$asset}/offer.png"  class="img-responsive center-block hidden-xs">
                        <img src="{$asset}/offer-mobile.png"  class="img-responsive center-block visible-xs">

                    {else}
                        <img src="{$asset}/offer.png"  class="img-responsive center-block">
                    {/if}
                </div>
                <!-- end of offer row -->
            </div>

            <!-- end off the offer -->

            <div class="col-xs-12 col-sm-3">
                {if $lp == 'WEBGIRONDINS'}
                    {assign 'bonuscode' 'WEBGIRONDINS'}
                {elseif $lp == 'SOFOOT'}
                    {assign 'bonuscode' 'SOFOOT'}
                {elseif $lp == 'sportyvip'}
                    {assign 'bonuscode' 'SPORTYVIP'}
                {elseif $lp == 'edhec'}
                    {assign 'bonuscode' 'EDHEC200'}
                {elseif $lp == 'EnVertEtContreTous'}
                    {assign 'bonuscode' 'EVECT'}
                {elseif $lp == 'Le10sport'}
                    {assign 'bonuscode' 'LE10SPORT'}
                {elseif $lp == 'k-james'}
                    {assign 'bonuscode' 'KJPVIP'}
                {elseif $lp == 'epronosfr'}
                    {assign 'bonuscode' 'EPRONOFR'}
                {elseif $lp == 'noah'}
                    {assign 'bonuscode' 'NOAHVIP'}
                {elseif $lp == 'pronostip'}
                    {assign 'bonuscode' 'PRONOSTIP'}
                {elseif $lp == 'Paris-Team'}
                    {assign 'bonuscode' 'PARISTEAM'}
                {elseif $lp == 'RueDesJoueurs'}
                    {assign 'bonuscode' 'RDJVIP'}
                {elseif $lp == 'LTMAX'}
                    {assign 'bonuscode' 'LTMAX'}
                {elseif $lp == 'goal'}
                    {assign 'bonuscode' 'GOALVIP'}
                {elseif $lp == 'conseil'}
                    {assign 'bonuscode' 'CPNETBET5'}
                {elseif $lp == 'foot-fr'}
                    {assign 'bonuscode' 'FOOTFRVIP'}
                {elseif $lp == 'madeinfoot'}
                    {assign 'bonuscode' 'MADEVIP'}
                {elseif $lp == 'turf-fr'}
                    {assign 'bonuscode' 'TURFVIP'}
                {elseif $lp == 'duelfoot'}
                    {assign 'bonuscode' 'DUELVIP'}
                {elseif $lp == 'betteur'}
                    {assign 'bonuscode' 'BETTEUR'}
                {elseif $lp == 'afiliapub'}
                    {assign 'bonuscode' 'MyBonus'}
                {elseif $lp == 'MEPHISTO'}
                    {assign 'bonuscode' 'MEPHISTO'}
                {elseif $lp == 'RDJSOFOOT'}
                    {assign 'bonuscode' 'RDJSOFOOT'}
                {elseif $lp == 'LT-VIP'}
                    {assign 'bonuscode' 'LTVIP'}
                {elseif $lp == 'TWOB'}
                    {assign 'bonuscode' 'TWOB'}
                {elseif $lp == 'SOCCERVIP'}
                    {assign 'bonuscode' 'SOCCERVIP'}
                {elseif $lp == 'PRONOZEO'}
                    {assign 'bonuscode' 'PRONOZEO'}
                {elseif $lp == 'vert-vip'}
                    {assign 'bonuscode' 'VERTVIP'}
                {elseif $lp == 'CPSVIP1'}
                    {assign 'bonuscode' 'CPSVIP'}
                {elseif $lp == 'PRONOSVIP'}
                    {assign 'bonuscode' 'PRONOSVIP'}
                {elseif $lp == 'sosvip'}
                    {assign 'bonuscode' 'SOSVIP'}
                {elseif $lp == 'bestparis'}
                    {assign 'bonuscode' 'BESTPARIS'}
                {elseif $lp == 'NETBMAX'}
                    {assign 'bonuscode' 'NETBMAX'}
                {elseif $lp == 'NETBMAXVIP'}
                    {assign 'bonuscode' 'NETBMAX'}
                {elseif $lp == 'PRONOSDIRECT'}
                    {assign 'bonuscode' 'PRONOSDIRECT'}
                {elseif $lp == 'SILVERVIP'}
                    {assign 'bonuscode' 'SILVERVIP'}
                {elseif $lp == 'PS2017'}
                    {assign 'bonuscode' 'PS2017'}
                {elseif $lp == 'AKAY17'}
                    {assign 'bonuscode' 'AKAY17'}
                {elseif $lp == 'NYL2VIP'}
                    {assign 'bonuscode' 'NYL2VIP'}
                {elseif $lp == 'TEAMPS100'}
                    {assign 'bonuscode' 'TEAMPS100'}
                {elseif $lp == 'ADAM100'}
                    {assign 'bonuscode' 'ADAM100'}
                {/if}

                {include file="pages/landing/netbetfr/partials/form/register.tpl"}
            </div>
            <!-- End of reg form -->

            <div class="row visible-xs">
                <div class="col-xs-12">
                    <div class="button">
                        <a href="{$cta.sport}" class="button1">
                            <img src="{$asset}/button.png" alt="Rejoignez-nous!" class="img-fill" >
                        </a>
                    </div>
                    {if $lp == 'TEAMPS100'}
                        <a style="color:#fff;font-size:0.7em;text-decoration:underline;float:right;margin-bottom:1em;" href="#modal" target="_blank" rel="nofollow">
                            *Conditions
                        </a>
                    {else}
                        <a style="color:#fff;font-size:0.7em;text-decoration:underline;float:right;margin-bottom:1em;" href="http://www.livepartners.fr/affiliate/tracking/click/?p=5&l=fr&id=&t=promotion&id={$id}{$postfix}" target="_blank" rel="nofollow">
                            *Conditions
                        </a>
                    {/if}
                </div>

                <!-- end of button row -->
            </div>
            <div class="row clearfix">



                <div class="col-xs-12 col-sm-9">
                    {if $lp == 'epronosfr'}
                        <div class="row hidden-xs">
                            <div class="col-xs-12">
                                <img src="{$asset}/steps.png"  class="img-responsive center-block" style="margin-bottom: 0.5em;">
                            </div>
                        </div>

                        <div class="row visible-xs">
                            <div class="col-xs-12 col-sm-4">
                                <img src="{$asset}/1.png"  class="img-responsive center-block" style="margin-bottom: 0.5em;">
                            </div>
                            <div class="col-xs-12 col-sm-4">
                                <img src="{$asset}/2.png"  class="img-responsive center-block" style="margin-bottom: 0.5em;">
                            </div>
                            <div class="col-xs-12 col-sm-4">
                                <img src="{$asset}/3.png"  class="img-responsive center-block" style="margin-bottom: 0.5em;">
                            </div>
                        </div>
                    {else}
                        <div class="row">
                            <div class="col-xs-12 col-sm-4">
                                <img src="{$asset}/1.png"  class="img-responsive center-block" style="margin-bottom: 0.5em;">
                            </div>
                            <div class="col-xs-12 col-sm-4">
                                <img src="{$asset}/2.png"  class="img-responsive center-block" style="margin-bottom: 0.5em;">
                            </div>
                            <div class="col-xs-12 col-sm-4">
                                <img src="{$asset}/3.png"  class="img-responsive center-block" style="margin-bottom: 0.5em;">
                            </div>
                        </div>
                    {/if}
                </div>
                <!--  End if steps -->
                <div class="row visible-xs">
                    <div class=" col-xs-12 text-center" style="font-size: 16px; margin-bottom: 12px;">

                        {if $lp == 'RDJSOFOOT' }
                        <a style="color:#fff;font-size:0.7em;text-decoration:underline;" href="https://www.netbet.fr/promotions/promo/2?&id={$id}{$postfix}" target="_blank" rel="nofollow">
                            {elseif $lp == 'TEAMPS100'}
                            <a style="color:#fff;font-size:0.7em;text-decoration:underline;" href="#modal" target="" rel="nofollow">
                                {else}
                                <a style="color:#fff;font-size:0.7em;text-decoration:underline;" href="http://www.livepartners.fr/affiliate/tracking/click/?p=5&l=fr&id=&t=promotion&id={$id}{$postfix}" target="_blank" rel="nofollow">
                                    {/if}
                                    *Conditions
                                </a>
                    </div>
                    <!-- Terms desktop-->
                </div>
                <div class="col-xs-3 hidden-xs">
                    <a href="{$cta.sport}" class="button1">
                        <img src="{$asset}/button.png"  class="img-responsive center-block" style="margin-top: 1.1em;">
                    </a>
                    <div class="hidden-xs pull-right" >

                        {if $lp == 'RDJSOFOOT' }
                        <a style="color:#fff;font-size:0.7em;text-decoration:underline;" href="https://www.netbet.fr/promotions/promo/2?&id={$id}{$postfix}" target="_blank" rel="nofollow">
                            {elseif $lp == 'TEAMPS100'}
                            <a style="color:#fff;font-size:0.7em;text-decoration:underline;" href="#modal" target="" rel="nofollow">
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
                    <div class="col-xs-12 col-sm-4">
                        <img src="lp-asset/netbetfr/img/step1.png" alt="Vivez les émotions du direct en pariant jusqu'à la dernière minute !" class="img-fill center-block" style="max-width:312px;">
                    </div>
                    <div class="col-xs-12 col-sm-4">
                        <img src="lp-asset/netbetfr/img/step2.png" alt="Ne manquez plus jamais un match !" class="img-fill center-block" style="max-width:312px;">
                    </div>
                    <div class="col-xs-12 col-sm-4">
                        <img src="lp-asset/netbetfr/img/step3.png" alt="Profitez des conseils d'un pro du football !" class="img-fill center-block" style="max-width:312px;">
                    </div>


                </div>
            </div>

        </section>
    </a>
    <section id="footer" class="blue-footer">
        <div class="container-fluid">
            <div class="row hidden ">
                <div class="terms-text">
                    <div class="col-xs-12" style=" font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif">

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

{block name="footer"}

    <script src="src/js/remodal.min.js"></script>
    <script>
        
        $(".promo img").attr('src', '{$asset}/responsive-logo.png');
        $('.button1').click(function(){
            var val1 = $('[name="fname"]' ).val();
            var val2 = $('[name="lname"]' ).val();
            var val3 = $('[name="email"]' ).val();
            var allpara = '&fname='+val1+'&lname='+val2+'&email='+val3+'&bonuscode={$bonuscode}{$postfix}';
            var _href = $(this).attr("href");
            $(this).attr('href', _href + allpara );

        });
    </script>
{/block}