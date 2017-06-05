{extends file="base/base.tpl"}
{block name=title}
    {$brand|capitalize} {$product|capitalize} {* Editable title of landing pages *}
{/block}
{block name=head}

{/block}
{block name=body}
    <div class="row">
        <div class="col-xs-12 text-center odd">
            <div class="row">

                <div class="col-xs-10 col-xs-offset-1">
                    <div class="odd-name">
                        <h2>England - Premier League</h2>
                        <h3>01/04 | 15:00</h3>
                    </div>
                </div>
            </div>

            <!-- end of row -->

            <div class="row">
                <div class="row ">
                    <div class="col-xs-10 col-xs-offset-1 odd-match">
                        <div>
                            <div id="home-name" class="col-xs-5 text-left"><h2>Burnley</h2></div>
                            <div id="versus" class="col-xs-2"><h2><span class="versus-bg">VS</span></h2></div>
                            <div id="away-name" class="col-xs-5 text-right"><h2>Tottenham</h2></div>
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
                        <div class="col-xs-2 home "><h3>9/2</h3></div>
                        <div class="col-xs-2 col-xs-offset-3 draw"><h3>14/5</h3></div>
                        <div class="col-xs-2 col-xs-offset-3 away"><h3>2/3</h3></div>
                    </div>
                </div>
                <!-- end of numver -->

                <div class="row">


                </div>
            </div>
        </div>

    </div>
    <button id="get-data" class="btn btn-primary">
    Button
    </button>
    <div class="output" id="show-data"></div>
{/block}
{block name=footer}
    <script>
        $(document).ready(function () {

                var messages = [];
                $.getJSON('/api/odds/Soccer/FRACTIONAL', function (data) {

                    index = 0;
                    leagueID = "{$smarty.get.leagueID}";

                    $.each(data.Event, function( i, value ) {
                        if (value.MoneyLine){
                            if(leagueID && leagueID == value["@attributes"].LeagueID){
                                messages.push([
                                    value.Participants.Participant1["@attributes"].Name,
                                    value.Participants.Participant2["@attributes"].Name,
                                    value.MoneyLine["@attributes"].Home,
                                    value.MoneyLine["@attributes"].Draw,
                                    value.MoneyLine["@attributes"].Away,
                                    value["@attributes"].DateTimeGMT,
                                    value["@attributes"].League
                                ]);
                            }else{
                                messages.push([
                                    value.Participants.Participant1["@attributes"].Name,
                                    value.Participants.Participant2["@attributes"].Name,
                                    value.MoneyLine["@attributes"].Home,
                                    value.MoneyLine["@attributes"].Draw,
                                    value.MoneyLine["@attributes"].Away,
                                    value["@attributes"].DateTimeGMT,
                                    value["@attributes"].League
                                ]);
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