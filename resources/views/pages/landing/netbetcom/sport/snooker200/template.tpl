{extends file="base/base.tpl"}
{block name=title}
    {$brand|capitalize} {$product|capitalize} {* Editable title of landing pages *}
{/block}
{block name=head}
    <link href="{$asset}/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/main.css">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">
    <link rel="stylesheet" href="src/css/animate.css">

    <style>
        .main {
            background-image: url('{$asset}/{$lang}/bg.jpg');
        }
        .offscreen{
            position: absolute;
            margin-top: -5000px;
        }
        {if $lp == 'pan-v-bro' || $lp == 'psg-chelsea' || $lp == 'ars-fcb'}
        .offer {
            margin-top: 0px;
        }
        .button{
            margin-top: 0px;
        }
        {elseif $lp == 'snooker200'}
        .button{
            margin-top: 132px;
        }
        .offer img{
            height: 378px;
        }
        @media only screen and (max-width : 767px) {
            .button{
                margin-top: 0;
            }
        }
        {/if}

        .custom-text{
            color: white;
            font-family:  Bebas Neue, sans-serif;
            margin-top: 5px;
        }
        .custom-text h4{
            font-size: 30px;
        }

    </style>
{/block}
{block name=body}
    {assign "lpconf" "{$smarty.current_dir}/{$lang}/lp.conf"}
    {config_load file=$lpconf}
    <section id="main-nav">
        <nav class="navbar black-transparent">
            <div class="container">
                {include file="lab/organisms/nav/nav-main.tpl" text=$text}
            </div>
        </nav>
    </section>
    <!-- end of NAV -->

    <a href="{$cta.sport}" rel="nofollow">
        <section class="mobile visible-xs">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-12">
                        <img src="{$asset}/{$lang}/mobile.jpg" alt="" class="img-responsive center-block">
                        <div class="bunus-text text-center">
                            <h2>
                                {if $lp == 'netbet100'}
                                    BONUS CODE: NETBET100

                                {elseif $lp == 'nl200' || $lp == 'snooker200'}
                                    {if $lang == 'en'}
                                        BONUS CODE: 200NETBET
                                    {else}
                                        BONUS CODE: NL200
                                    {/if}
                                {elseif $lp == 'pan-v-bro' || $lp == 'psg-chelsea' || $lp == 'ars-fcb'}
                                {else}

                                    BONUS CODE: 200NETBET
                                {/if}
                            </h2>
                        </div>
                        <div class="button">
                            {if $lang == 'nl'}
                                <div  class="CTA-button center-block">ZET IN</div>
                            {else}
                                <div  class="CTA-button center-block">BET NOW</div>
                            {/if}
                        </div>
                    </div>
                </div>

            </div>


        </section>
        <section class="main hidden-xs">
            <div class="container-fluid">


                <div class="row">

                    <div class="col-xs-12  pull-right">

                        <div class="offer " >
                            {if $lp == 'pan-v-bro' || $lp == 'psg-chelsea' || $lp == 'ars-fcb'}
                                <img src="{$asset}/{$lang}/text.png" alt="" class="img-responsive center-block ">
                                <img src="{$asset}/{$lang}/offer.png" alt="" class="img-responsive center-block " style="width: 262px;margin-top: 20px;">
                            {/if}

                        </div>
                        <!-- end of offer row -->
                        {if $lp == 'snooker200'}
                            <div class="offer ">
                                <img src="{$asset}/{$lang}/offer.png" alt="" class="img-responsive center-block ">
                            </div>
                        {/if}
                        <div class="button ">
                            <img src="{$asset}/{$lang}/button.png" alt="" class="img-responsive center-block ">
                        </div>
                        <!-- end of button row -->

                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-12 text-center">
                        <div class="bunus-text">
                            <h2>
                                {if $lp == 'netbet100'}
                                    BONUS CODE: NETBET100
                                {elseif $lp == 'nl200' || $lp == 'snooker200'}
                                    {if $lang == 'en'}
                                        BONUS CODE: 200NETBET
                                    {else}
                                        BONUS CODE: NL200
                                    {/if}
                                {elseif $lp == 'pan-v-bro' || $lp == 'psg-chelsea' || $lp == 'ars-fcb'}

                                {else}
                                    BONUS CODE: 200NETBET
                                {/if}
                            </h2>
                        </div>
                    </div>
                </div>



            </div>
            <!-- end of main container -->

        </section>
    </a>
    <!-- end of main section -->

    <a href="{$cta.sport}" rel="nofollow">
        <section class="steps">
            <div class="container-fluid">
                <div class="row visible-xs">
                    <div class="text-center custom-text">
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



    <section id="footer" class="bg-darkgrey">
        <div class="container-fluid">
            <div class="row">
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
            {include file="lab/organisms/footer/footer-main.tpl"
            responsible_text_header = #responsible_text_header#
            payment_text_header = #payment_text_header#}
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
{block name=footer}
    <script src="src/js/remodal.min.js"></script>
    <script>
        $(function(){
            $("#modal1Desc").load("{$asset}/{$lang}/terms.html");
        });
    </script>

{/block}

