{extends file="base/base.tpl"}
{block name=title}
    {$brand|capitalize} {$product|capitalize} {* Editable title of landing pages *}
{/block}
{block name=head}
    <link href="{$asset}/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/main.css">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/animate.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">

    <style>
        .main {
            background-image: url('{$asset}/bg.jpg');
        }
        .offscreen{
            position: absolute;
            margin-top: -5000px;
        }
        @font-face {
            font-family: Bebas Neue;
            src: url("src/fonts/BebasNeue.otf");
        }
    </style>
{/block}
{block name=body}
    <section id="main-nav">
        <nav class="navbar black-transparent">
            <div class="container-fluid">
                {include file="lab/organisms/nav/nav-main.tpl" text=$text link=$cta.sport}
            </div>
        </nav>
    </section>
    <!-- end of NAV -->

    <a href="{$cta.sport}" rel="nofollow">
        <section class="main hidden-xs">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-xs-12 text-center odd">
                        <div class="row">

                            <div class="col-xs-6 col-xs-offset-3">
                                <div class="odd-name">
                                    <h2></h2>
                                    <h3>27:08:2015</h3>
                                </div>
                            </div>
                        </div>

                        <!-- end of row -->

                        <div class="row">
                            <div class="row ">
                                <div class="col-xs-10 col-xs-offset-1 odd-match">
                                    <div >
                                        <div id="home-name" class="col-xs-4 text-left"><h2></h2></div>
                                        <div id="versus" class="col-xs-4"><h2><span class="versus-bg">V</span></h2></div>
                                        <div id="away-name" class="col-xs-4 text-right"><h2></h2></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-10 col-xs-offset-1 onextwo">
                                    <div class="col-xs-2"><h3>1</h3></div>
                                    <div class="col-xs-2 col-xs-offset-3"><h3>X</h3></div>
                                    <div class="col-xs-2 col-xs-offset-3"><h3>2</h3></div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-10 col-xs-offset-1 odd-text">
                                    <div  class="col-xs-2 home "><h3></h3></div>
                                    <div  class="col-xs-2 col-xs-offset-3 draw"><h3></h3></div>
                                    <div  class="col-xs-2 col-xs-offset-3 away"><h3>1.65</h3></div>
                                </div>
                            </div>
                            <!-- end of numver -->

                            <div class="row">

                            </div>
                        </div>
                    </div>

                </div>
                <!-- odd row -->
                <div class="row">
                    <div class="col-xs-12 text-center">
                        <div class="offer animated pulse">
                            <div class="col-xs-8 col-xs-offset-2 box text-center">
                                {if $lang == 'de'}

                                    <div class="de">
                                        <h1>100% EINZAHLUNGSBONUS</h1>
                                    </div>
                                    <!-- End of DE -->

                                {elseif $lang == 'nl'}

                                    <div class="nl">
                                        <h1>&euro;200 GRATIS INZET</h1>
                                    </div>
                                    <!-- End of NL-->
                                {else}

                                        <h1>Pariază în siguranță</h1>
                                        <h2>1500 RON GRATIS</h2>

                                {/if}

                            </div>
                        </div>
                    </div>

                </div>
                <!-- end of offer row -->
                <div class="row">
                    <div class="button">
                        <div class="col-xs-8 col-xs-offset-2 box text-center">
                            {if $lang == 'de'}

                                <div class="de ">
                                    <div  class="CTA-button center-block">JETZT WETTEN</div>
                                </div>
                                <!-- End of DE -->

                            {elseif $lang == 'nl'}

                                <div class="nl ">
                                    <div  class="CTA-button center-block">ZET IN</div>
                                </div>

                            {else}

                                    <div  class="CTA-button center-block">PARIAZĂ ACUM</div>

                            {/if}

                        </div>
                    </div>

                </div>
                <!-- end of offer row -->


            </div>
            <!-- end of main container -->

        </section>
    </a>
    <!-- end of main section -->

    <section class="main visible-xs">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12 text-center">
                    <div class="offer animated pulse">
                        <div class="col-xs-12  box text-center">

                            {if $lang == 'de'}

                                <div class="de">
                                    <h1>100% EINZAHLUNGSBONUS</h1>
                                </div>
                                <!-- End of DE -->
                            {elseif $lang == 'nl'}

                                <div class="nl">
                                    <h1>&euro;200 GRATIS INZET</h1>
                                </div>
                                <!-- End of NL-->

                            {else}

                                <h1>Pariază în siguranță</h1>
                                <h2>1500 RON GRATIS</h2>
                                <!-- End of EN -->
                            {/if}
                        </div>
                    </div>
                </div>
            </div>
            <!-- end of offer -->

            <div class="col-xs-12 text-center odd">

                <!-- end of row -->
                <div class="row">
                    <div class="row ">
                        <div class="col-xs-10 col-xs-offset-1 odd-match">
                            <div>
                                <div class="row">

                                    <div class="col-xs-12">
                                        <div class="odd-name">
                                            <h2></h2>
                                            <h3>27:08:2015</h3>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div id="home-name" class="col-xs-8 "><h2></h2></div>
                                    <div class="col-xs-4 home"><h3></h3></div>
                                </div>
                                <div class="row">
                                    <div class="col-xs-8"><h3><span>V</span></h3></div>
                                    <div class="col-xs-4 draw"><h3></h3></div>
                                </div>
                                <div class="row">
                                    <div id="away-name" class="col-xs-8 "><h2></h2></div>
                                    <div class="col-xs-4 away"><h3>1.65</h3></div>
                                </div>


                            </div>
                        </div>
                        <!-- end of odd -->

                    </div>
                    <div class="row">
                        <a href="{$cta.sport}" rel="nofollow">


                            <div class="button">
                                <div class="col-xs-8 col-xs-offset-2 box text-center">

                                    {if $lang == 'de'}

                                        <div class="de ">
                                            <div  class="CTA-button center-block">JETZT WETTEN</div>
                                        </div>
                                        <!-- End of DE -->

                                    {elseif $lang == 'nl'}

                                        <div class="nl ">
                                            <div  class="CTA-button center-block">ZET IN</div>
                                        </div>

                                    {else}


                                            <div  class="CTA-button center-block">PARIAZĂ ACUM</div>

                                    {/if}

                                </div>
                            </div>
                        </a>
                    </div>
                    <!-- end of button row -->

                </div>
            </div>

        </div>
    </section>
    <!-- end mobile main section-->

    <a href="{$cta.sport}" rel="nofollow">
        <section class="steps">
            <div class="container-fluid">
                <div class="row visible-xs">
                    <div class="text-center">
                        <h3>{$text}</h3>
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

                        <img src="{$asset}/steps-mobile.png" alt="" class="img-responsive center-block">

                    </div>
                </div>
                <!-- end of small sreen steps -->
            </div>

        </section>
    </a>
    <!-- end of steps section -->
    <section class="products">
        <div class="container-fuild">

        </div>
    </section>



    <section id="footer" class="bg-darkgrey">
        <div class="container-fluid">
            <div class="row terms">
                <div class="col-xs-11 hidden-xs">
                    <br>
                    <p class="pull-left hidden-xs terms">
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
            {include file="pages/landing/{$domain}/terms/{$product}/welcome-offer/terms.tpl"}
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
        $(document).ready(function () {

            var messages = [];
            var messages1 = [];
            var messages2 = [];
            $.getJSON('/api/odds/soccer/decimal', function (data) {

                index = 0;
                leagueID = "{$smarty.get.leagueID}";
                League = "Romania ";

                $.each(data.Event, function( i, value ) {

                    if (value.MoneyLine){

                        if(leagueID && leagueID == value["@attributes"].LeagueID || League && !value["@attributes"].League.indexOf(League)){
                            messages1.push([
                                value.Participants.Participant1["@attributes"].Name,
                                value.Participants.Participant2["@attributes"].Name,
                                value.MoneyLine["@attributes"].Home,
                                value.MoneyLine["@attributes"].Draw,
                                value.MoneyLine["@attributes"].Away,
                                value["@attributes"].DateTimeGMT,
                                value["@attributes"].League
                            ]);
                        }else{

                            messages2.push([
                                value.Participants.Participant1["@attributes"].Name,
                                value.Participants.Participant2["@attributes"].Name,
                                value.MoneyLine["@attributes"].Home,
                                value.MoneyLine["@attributes"].Draw,
                                value.MoneyLine["@attributes"].Away,
                                value["@attributes"].DateTimeGMT,
                                value["@attributes"].League
                            ]);
                        }
                        if(messages1){

                            messages = messages1;
                        }else{
                            messages = messages2;
                        }
                    }
                });


                function cycle() {

                    $('#home-name h2').text(messages[index][0]);
                    $('#away-name h2').text(messages[index][1]);
                    $('.home h3').text(messages[index][2]);
                    $('.draw h3').text(messages[index][3]);
                    $('.away h3').text(messages[index][4]);
                    $('.odd-name h3').text(messages[index][5]);
                    $('.odd-name h2').text(messages[index][6]);
                    index++;

                    if (index === messages.length) {
                        index = 0;
                    }

                    setTimeout(cycle, 5000);
                }

                cycle();
            });
        });
    </script>
{/block}










