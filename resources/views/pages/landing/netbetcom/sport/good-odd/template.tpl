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
        @font-face {
            font-family: Bebas Neue;
            src: url("src/fonts/BebasNeue.otf");
        }

        .main {
            /*background-image: url('{$asset}/bg.jpg');*/
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

    <a href="{$cta.sport}" rel="nofollow">
        <section class="main ">
            <div class="container-fluid">


                <div class="row">
                    <div class="header">
                        <div class="col-xs-12">

                            <div class="col-xs-12 col-sm-8">
                                {if $lang == 'nl'}
                                    <div class="nl">
                                        <h1 class="white"><b>DE BESTE ODDS</b></h1>

                                    </div>
                                {else}
                                    <div class="nl">
                                        <h1 class="white"><b>BEST ODDS GUARANTEED</b></h1>
                                    </div>
                                {/if}
                            </div>
                            <div class="col-xs-4 text-center hidden-xs">
                                <div class="col-xs-4">
                                    <h1 class="odd-odd white">1</h1>
                                </div>
                                <div class="col-xs-4">
                                    <h1 class="odd-odd white">X </h1>
                                </div>
                                <div class="col-xs-4">
                                    <h1 class="odd-odd white">2</h1>
                                </div>
                            </div>

                        </div>
                        <!-- End of header  -->
                    </div>

                </div>
                <div class="row">
                    <div class="col-xs-12 text-center odd">


                        <div class="row ">
                            <div class="col-xs-12  odd-match">
                                <div id="match1" class="match">


                                    <div class=" odd-panel">
                                        <div class="col-sm-3  col-xs-12">
                                            <div class="odd-name text-center">
                                                <h2>{$arr[0].league}</h2>

                                            </div>
                                        </div>
                                        <!-- End of col xs 3 -->

                                        <div class=" col-xs-12 col-sm-5 odd-match-name text-center">
                                            <h2 id="home-name">{$arr[0].participant1}</h2>
                                            <h2 class="v"><span> VS </span></h2>
                                            <h2 id="away-name" >{$arr[0].participant2}</h2>
                                            <div id="time" ><h2>{$arr[0].date}</h2></div>
                                            <!-- End of match name -->
                                        </div>
                                        <!--  End of col-xs-5 -->
                                        <div class="col-sm-4  col-xs-12 odd-text ">
                                            <div  class="col-xs-4 home "><h3>2.33</h3></div>
                                            <div  class="col-xs-4 draw"><h3>57/20</h3></div>
                                            <div  class="col-xs-4  away"><h3>7/2</h3></div>
                                        </div>
                                        <!-- End of score -->
                                    </div>
                                    <!-- End of panel -->


                                </div>
                                <!-- End of Match -->

                            </div>

                        </div>
                        <!-- End of row for Match 1-->
                        <div class="row ">
                            <div class="col-xs-12  odd-match">
                                <div id="match2" class="match">


                                    <div class=" odd-panel">
                                        <div class="col-sm-3  col-xs-12">
                                            <div class="odd-name text-center">
                                                <h2>{$arr[1].league}</h2>

                                            </div>
                                        </div>
                                        <!-- End of col xs 3 -->

                                        <div class=" col-xs-12 col-sm-5 odd-match-name text-center">
                                            <h2 id="home-name">{$arr[1].participant1}</h2>
                                            <h2 class="v"><span> VS </span></h2>
                                            <h2 id="away-name" >{$arr[1].participant2}</h2>
                                            <div id="time" class=" time11"><h2>{$arr[1].date}</h2></div>
                                            <!-- End of match name -->
                                        </div>
                                        <!--  End of col-xs-5 -->
                                        <div class="col-sm-4  col-xs-12 odd-text ">
                                            <div class="col-xs-4 home home11"><h3>3.1</h3></div>
                                            <div class="col-xs-4 draw draw11"><h3>3.25</h3></div>
                                            <div class="col-xs-4  away away11"><h3>2.45</h3></div>
                                        </div>
                                        <!-- End of score -->
                                    </div>
                                    <!-- End of panel -->


                                </div>
                                <!-- End of Match -->

                            </div>

                        </div>
                        <!-- End of row for Match 2-->

                        <div class="row ">
                            <div class="col-xs-12  odd-match">
                                <div id="match3" class="match">


                                    <div class=" odd-panel">
                                        <div class="col-sm-3  col-xs-12">
                                            <div class="odd-name text-center">
                                                <h2>{$arr[2].league}</h2>

                                            </div>
                                        </div>
                                        <!-- End of col xs 3 -->

                                        <div class=" col-xs-12 col-sm-5 text-center odd-match-name">
                                            <h2 id="home-name">{$arr[2].participant1}</h2>
                                            <h2 class="v"><span> VS </span></h2>
                                            <h2 id="away-name" >{$arr[2].participant2}</h2>
                                            <div id="time" ><h2>{$arr[2].date}</h2></div>
                                            <!-- End of match name -->
                                        </div>
                                        <!--  End of col-xs-5 -->
                                        <div class="col-sm-4  col-xs-12 odd-text ">
                                            <div  class="col-xs-4 home "><h3>5.9</h3></div>
                                            <div  class="col-xs-4 draw"><h3>4.6</h3></div>
                                            <div  class="col-xs-4  away"><h3>1.526</h3></div>
                                        </div>
                                        <!-- End of score -->
                                    </div>
                                    <!-- End of panel -->


                                </div>
                                <!-- End of Match -->

                            </div>

                        </div>
                        <!-- End of row for  Match 3 -->
                        <div class="row ">
                            <div class="col-xs-12  odd-match">
                                <div  id="match4" class="match">


                                    <div class=" odd-panel">
                                        <div class="col-sm-3  col-xs-12">
                                            <div class="odd-name text-center">
                                                <h2>{$arr[3].league}</h2>

                                            </div>
                                        </div>
                                        <!-- End of col xs 3 -->

                                        <div class=" col-xs-12 col-sm-5 text-center odd-match-name">
                                            <h2 id="home-name">{$arr[3].participant1}</h2>
                                            <h2 class="v"><span> VS </span></h2>
                                            <h2 id="away-name" >{$arr[3].participant2}</h2>
                                            <div id="time" ><h2>{$arr[3].date}</h2></div>
                                            <!-- End of match name -->
                                        </div>
                                        <!--  End of col-xs-5 -->
                                        <div class="col-sm-4  col-xs-12 odd-text ">
                                            <div  class="col-xs-4 home "><h3>2.14</h3></div>
                                            <div  class="col-xs-4 draw"><h3>0.5</h3></div>
                                            <div  class="col-xs-4  away"><h3>1.709</h3></div>
                                        </div>
                                        <!-- End of score -->
                                    </div>
                                    <!-- End of panel -->


                                </div>
                                <!-- End of Match -->

                            </div>

                        </div>
                        <!-- End of row for Match 4 -->







                    </div>

                </div>
                <!-- odd row -->



            </div>
            <!-- end of main container -->

            <div class="container-fluid">
                <div class="blue-line">
                    <div class="row">
                        <div class="col-xs-12 text-center">
                            <div class="offer animated pulse">
                                <div class="col-xs-12 col-sm-8  box text-center">
                                    {if $lang == 'nl'}
                                        <div class="nl">
                                            <h1>&euro;50 GRATIS  INZET</h1>

                                        </div>
                                    {else}
                                        <div class="en">
                                            <h1> &euro;50 FREE BET</h1>
                                        </div>
                                    {/if}
                                </div>
                                <div class="button">
                                    <div class="col-xs-12 col-sm-4 box text-center">
                                        {if $lang == 'nl'}
                                            <div class="nl">
                                                <div  class="CTA-button center-block">ZET IN</div>
                                            </div>
                                        {else}
                                            <div class="en">
                                                <div  class="CTA-button center-block">BET NOW</div>
                                            </div>

                                        {/if}

                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>
    </a>
    <!-- end of main section -->

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

                        {if $lang == 'en'}
                            <img src="{$asset}/steps-bonus.png" alt="" class="img-responsive center-block">
                        {else}
                            <img src="{$lang}/img/steps.png" alt="" class="img-responsive center-block">
                        {/if}

                    </div>
                </div>
                <!-- end of lage screen steps -->

                <div class="row">
                    <div class="col-xs-12 visible-xs">


                        {if $lang == 'ie' || $lang == 'en'}
                            <img src="{$asset}/steps-bonus.png" alt="" class="img-responsive center-block">
                        {else}
                            <img src="{$asset}/steps.png" alt="" class="img-responsive center-block">
                        {/if}

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
                <div class="col-xs-11 ">
                    <br>
                    <p class="pull-left  terms">
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

    <script>
        $(document).ready(function () {

            var messages = [];
            var messages1 = [];
            var messages2 = [];
            $.getJSON('/api/odds/soccer/decimal', function (data) {

                index = 0;
                leagueID = "";
                League = "";

                $.each(data.Event, function( i, value ) {

                    if (value.MoneyLine){
                        if(leagueID && leagueID == value["@attributes"].LeagueID || League && value["@attributes"].League.indexOf(League) > -1){

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
                        if(jQuery.isEmptyObject(messages1)){

                            messages = messages2;
                        }else{
                            messages = messages1;
                        }
                    }
                });


                function cycle() {

                    $('#match1 #home-name ').text(messages[0][0]);
                    $('#match1 #away-name ').text(messages[0][1]);
                    $('#match1 .home h3').text(messages[0][2]);
                    $('#match1 .draw h3').text(messages[0][3]);
                    $('#match1 .away h3').text(messages[0][4]);
                    $('#match1 #time h2').text(messages[0][5]);
                    $('#match1 .odd-name h2').text(messages[0][6]);

                    $('#match2 #home-name ').text(messages[1][0]);
                    $('#match2 #away-name ').text(messages[1][1]);
                    $('#match2 .home h3').text(messages[1][2]);
                    $('#match2 .draw h3').text(messages[1][3]);
                    $('#match2 .away h3').text(messages[1][4]);
                    $('#match2 #time h2').text(messages[1][5]);
                    $('#match2 .odd-name h2').text(messages[1][6]);

                    $('#match3 #home-name ').text(messages[2][0]);
                    $('#match3 #away-name ').text(messages[2][1]);
                    $('#match3 .home h3').text(messages[2][2]);
                    $('#match3 .draw h3').text(messages[2][3]);
                    $('#match3 .away h3').text(messages[2][4]);
                    $('#match3 #time h2').text(messages[2][5]);
                    $('#match3 .odd-name h2').text(messages[2][6]);

                    $('#match4 #home-name ').text(messages[3][0]);
                    $('#match4 #away-name ').text(messages[3][1]);
                    $('#match4 .home h3').text(messages[3][2]);
                    $('#match4 .draw h3').text(messages[3][3]);
                    $('#match4 .away h3').text(messages[3][4]);
                    $('#match4 #time h2').text(messages[3][5]);
                    $('#match4 .odd-name h2').text(messages[3][6]);

                    $('#match5 #home-name ').text(messages[4][0]);
                    $('#match5 #away-name ').text(messages[4][1]);
                    $('#match5 .home h3').text(messages[4][2]);
                    $('#match5 .draw h3').text(messages[4][3]);
                    $('#match5 .away h3').text(messages[4][4]);
                    $('#match5 #time h2').text(messages[4][5]);
                    $('#match5 .odd-name h2').text(messages[4][6]);

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






