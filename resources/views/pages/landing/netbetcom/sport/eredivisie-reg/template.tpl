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
        {if $lang == 'nl' && $lp == 'reg'}
        .main {
            background-image: url('50freebet-reg/nl/bg.jpg');
        }

        {else}
        .main {
            background-image: url('{$asset}/bg.jpg');
        }

        {/if}
        .offscreen{
            position: absolute;
            margin-top: -5000px;
        }
        @font-face {
            font-family: Bebas Avenu;
            src: url("src/fonts/BebasNeue.otf");
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


    <section class="main {if $lp == 'reg'} hidden-xs {/if}">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12 col-sm-4 {if $lp == 'reg'}col-sm-offset-4{else}pull-right{/if}   hidden-xs">

                    <div class="reg">
                        <div class="offer text-center" >

                            {if $lang == 'de'}
                                <div class="de">
                                    <h1><span>100%</span></h1>
                                    <h2> EINZAHLUNGS-</h2>
                                    <h2>BONUS</h2>
                                </div>
                            {elseif $lang == 'nl'}
                                <div class="nl">
                                    <h1><span>&euro;50</span> </h1>
                                    <h1>GRATIS </h1>
                                    <h1>INZET</h1>
                                </div>
                            {elseif $lang == 'ja'}
                                <div class="ja">
                                    <h1><span>$50</span> </h1>
                                    <h1>無料</h1>
                                    <h1>ベット</h1>

                                </div>
                            {else}
                                <div class="en">
                                    <h1>GET A</h1>
                                    <h1><span>$50</span></h1>
                                    <h1>FREE BET</h1>
                                </div>
                            {/if}

                        </div>
                        <!-- end of offer text  -->
                        <form class="center-block" id="form1">
                            {if $lang == 'de'}
                                <input type="text" name="fname" placeholder="Vorname">
                                <input type="text" name="lname" placeholder="Nachname">
                                <input type="text" name="email" placeholder="E-Mail">


                            {elseif $lang == 'nl'}
                                <input type="text" name="fname" placeholder="VOORNAAM">
                                <input type="text" name="lname" placeholder="ACHTERNAAM">
                                <input type="text" name="email" placeholder="E-MAIL">

                            {elseif $lang == 'ja'}
                                <input type="text" name="fname" placeholder="名前">
                                <input type="text" name="lname" placeholder="名字">
                                <input type="text" name="email" placeholder="E-Mail">
                                <input type="text" name="phone"placeholder="携帯電話番号">

                            {else}
                                <input type="text" name="fname" placeholder="First Name">
                                <input type="text" name="lname" placeholder="Last Name">
                                <input type="text" name="email" placeholder="E-mail">
                                <input type="text" name="phone"placeholder="Telephone">
                            {/if}

                        </form>
                        <!-- End of form -->

                        <div class="button">
                            {if $lang == 'de'}
                                <div class="de ">
                                    <div  id="button1"class="CTA-button center-block">JETZT WETTEN</div>
                                </div>

                            {elseif $lang == 'nl'}
                                <div class="nl ">
                                    <div  id="button1" class="CTA-button center-block">ZET IN</div>
                                </div>

                            {elseif $lang == 'ja'}
                                <div class="ja ">
                                    <div id="button1"  class="CTA-button center-block">今すぐベット</div>
                                </div>

                            {else}
                                <div class="en ">
                                    <div id="button1"  class="CTA-button center-block">BET NOW</div>
                                </div>
                            {/if}
                        </div>

                        <!-- End of button -->
                    </div>
                </div>
            </div>



        </div>
        <!-- end of main container -->

    </section>

    <!-- end of main section -->
    <section class="reg-mobile">
        <div class="container-fluid">
            {if $lp == ''}
                <div class="row  visible-xs ">
                    <div class="col-xs-12">
                        {if $lang == 'nl' }
                            <img src="50freebet-reg/{$lang}/mobile.jpg" class="img-responsive center-block" alt="">
                        {else}
                            <img src="50freebet-reg/{$lp}/mobile.jpg" class="img-responsive center-block" alt="">
                        {/if}
                    </div>
                </div>
            {/if}
            <div class="row visible-xs">
                <div class="text-center">
                    <h3>{$text}</h3>
                </div>
            </div>
            <!-- end of text -->
            <div class="row">
                <div class="col-xs-12 col-sm-4  visible-xs">

                    <div class="reg">
                        <div class="offer text-center" >
                            {if $lang == 'de'}
                                <div class="de">
                                    <h1><span>100%</span></h1>
                                    <h2> EINZAHLUNGS-</h2>
                                    <h2>BONUS</h2>
                                </div>
                            {elseif $lang == 'nl'}
                                <div class="nl">
                                    <h1><span>&euro;50</span> </h1>
                                    <h1>GRATIS </h1>
                                    <h1>INZET</h1>
                                </div>
                            {elseif $lang == 'ja'}
                                <div class="ja">
                                    <h1><span>$50</span> </h1>
                                    <h1>無料</h1>
                                    <h1>ベット</h1>

                                </div>
                            {else}
                                <div class="en">
                                    <h1>GET A</h1>
                                    <h1><span>$50</span></h1>
                                    <h1>FREE BET</h1>
                                </div>
                            {/if}

                        </div>
                        <!-- end of offer text  -->
                        <form class="center-block" id="form2">

                            {if $lang == 'de'}
                                <input type="text" name="fname" placeholder="Vorname">
                                <input type="text" name="lname" placeholder="Nachname">
                                <input type="text" name="email" placeholder="E-Mail">


                            {elseif $lang == 'nl'}
                                <input type="text" name="fname" placeholder="VOORNAAM">
                                <input type="text" name="lname" placeholder="ACHTERNAAM">
                                <input type="text" name="email" placeholder="E-MAIL">

                            {elseif $lang == 'ja'}
                                <input type="text" name="fname" placeholder="名前">
                                <input type="text" name="lname" placeholder="名字">
                                <input type="text" name="email" placeholder="E-Mail">
                                <input type="text" name="phone"placeholder="携帯電話番号">

                            {else}
                                <input type="text" name="fname" placeholder="First Name">
                                <input type="text" name="lname" placeholder="Last Name">
                                <input type="text" name="email" placeholder="E-mail">
                                <input type="text" name="phone"placeholder="Telephone">
                            {/if}


                        </form>
                        <!-- End of form -->

                        <div class="button">
                            {if $lang == 'de'}
                                <div class="de ">
                                    <div id="button2" class="CTA-button center-block">JETZT WETTEN</div>
                                </div>

                            {elseif $lang == 'nl'}
                                <div class="nl ">
                                    <div id="button2" class="CTA-button center-block">ZET IN</div>
                                </div>

                            {elseif $lang == 'ja'}
                                <div class="ja ">
                                    <div  id="button2" class="CTA-button center-block">今すぐベット</div>
                                </div>

                            {else}
                                <div class="en ">
                                    <div id="button2"  class="CTA-button center-block">BET NOW</div>
                                </div>
                            {/if}
                        </div>

                        <!-- End of button -->
                    </div>
                </div>
            </div>
        </div>
    </section>

    <a href="{$url}" rel="nofollow">
        <section class="steps">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-xs-12 hidden-xs">
                        {if $lang == 'en'}
                            <img src="{$asset}/steps-bonus.png" alt="" class="img-responsive center-block">
                        {else}
                            <img src="{$asset}/steps.png" alt="" class="img-responsive center-block">
                        {/if}
                    </div>
                </div>
                <!-- end of lage screen steps -->

                <div class="row">
                    <div class="col-xs-12 visible-xs">
                        {if $lang == 'en'}
                            <img src="{$asset}/steps_mobile-bonus.png" alt="" class="img-responsive center-block">
                        {else}
                            <img src="{$asset}/steps_mobile.png" alt="" class="img-responsive center-block">
                        {/if}
                    </div>
                </div>
                <!-- end of small sreen steps -->
            </div>

        </section>
    </a>
    <!-- end of steps section -->


    <section id="footer" class="bg-darkgrey">
        <div class="container-fluid">
            <div class="row terms">
                <div class="col-xs-11">
                    <br>
                    <p class="pull-left terms">
                        *<a href="#modal">
                            <span class="text-muted">Terms &amp; Conditions</span>

                        </a>
                    </p>

                    <br>

                </div>
            </div>
            {include file="lab/organisms/footer/footer-main.tpl"}
        </div>
    </section>

    <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
        <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
        <div>
            {include file="pages/landing/{$domain}/terms/sport/welcome-offer/{$lang}/terms.tpl"}
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
        /*
         * FUNCTION
         */

        function setPrefilledRegistrationData (registrationVersion, registrationRedirectionUrl, formId) {
            var form = $(formId);
            if (form.length > 0) {
                var formData = form.serializeArray();
                var data = {};
                $.each(formData, function(key, val) {
                    data[val.name] = val.value;
                });
                $.ajax({
                    url: registrationVersion + 'RegisterV2/setPrefilledRegistrationData',
                    method: 'POST',
                    data: data,
                    xhrFields: {
                        withCredentials: true
                    },
                    crossDomain: true,
                    success: function() {
                        location.href = registrationRedirectionUrl;
                    }
                });
            }
        }
        /*
         * CONFIGURATION
         */


        var registrationVersion = 'https://registration.netbet.com/';
        //var registrationRedirectionUrl = registrationVersion  + '?mobile_small&netbetsport';
        var registrationRedirectionUrl1 = "https://banners.livepartners.com/click.php?p=126&l={$lang}&t=register{if $id}&id={$id}{/if}{if $postfix}{$postfix}{/if}";


        $(document).ready(function(){
            $('#button1').click(function(){
                setPrefilledRegistrationData(registrationVersion, registrationRedirectionUrl1, '#form1');

            });
        });
        $(document).ready(function(){
            $('#button2').click(function(){
                setPrefilledRegistrationData(registrationVersion, registrationRedirectionUrl1, '#form2');

            });
        });

    </script>

    <script>
        {if $lang =='de'}
        $(function(){
            $("#modal1Desc").load("50freebet/{$lang}/terms.html");
        });
        {else}
        $(function(){
            $("#modal1Desc").load("{$lang}/terms.html");
        });
        {/if}
    </script>


{/block}




