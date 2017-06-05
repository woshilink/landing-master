{extends file="base/base.tpl"}
{block name=title}
    {$brand|capitalize} {$product|capitalize} {* Editable title of landing pages *}
{/block}
{block name=head}
    <link href="{$asset}/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/main.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">
    {if $lp == '215freispiele' and $lang == 'de'}
        <style>
            .main {
                background-image: url('{$asset}/de/bg.jpg');
            }
            .offscreen{
                position: absolute;
                margin-top: -5000px;
            }
        </style>
    {else}
        <style>
            .main {
                background-image: url('{$asset}/{$lang}/bg.jpg');
            }
            .offscreen{
                position: absolute;
                margin-top: -5000px;
            }
        </style>
    {/if}
{/block}
{block name=body}
    <section id="main-nav">
        <nav class="navbar black-transparent navbar-fixed-top">
            <div class="container">
                {include file="lab/organisms/nav/nav-main.tpl" text=$text}
            </div>
        </nav>
    </section>
    <a href="{$url}" rel="nofollow">
        <section class="mobile visible-sm visible-xs">
            <div class="row">
                <div class="container-fluid">
                    <div class="col-xs-12">
                        <img src="{$asset}/{$lang}/mobile.jpg" class="img-responsive center-block" />
                        <div class="button">
                            {if $lang == 'ca' || $lang == 'en'}
                                <div  class="CTA-button center-block">PLAY NOW</div>
                            {elseif $lang == 'fr'}
                                <div  class="CTA-button center-block">JOUEZ MAINTENANT</div>
                            {elseif $lang == 'de' and $lp == '215freispiele'}

                            {elseif $lang == 'de'}
                                <div  class="CTA-button center-block">JETZT EINZAHLEN</div>
                            {elseif $lang == 'nl'}
                                <div  class="CTA-button center-block">SPEEL NU</div>
                            {elseif $lang == 'es'}
                                <div  class="CTA-button center-block">DEPOSITA AHORA</div>
                            {/if}
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--  End of mobile section -->

        <section class="main hidden-sm hidden-xs">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-7 col-sm-7 pull-right">

                        <div class="offer" >
                            <!-- Add offer here-->
                            <img src="{$asset}/{$lang}/offer.png" class="img-responsive pull-right" />


                        </div>
                    </div>
                </div>
                <!-- end of offer row -->
                <div class="row">
                    <div class="col-xs-7 pull-right">
                        <div class="button">
                            {if $lang == 'ca' || $lang == 'en'}
                                <div  class="CTA-button center-block">PLAY NOW</div>
                            {elseif $lang == 'fr'}
                                <div  class="CTA-button center-block">JOUEZ MAINTENANT</div>
                            {elseif $lang == 'de' and $lp == '215freispiele'}
                                <div  class="CTA-button center-block" style="opacity: 0;">JETZT EINZAHLEN</div>
                            {elseif $lang == 'de'}
                                <div  class="CTA-button center-block">JETZT EINZAHLEN</div>
                            {elseif $lang == 'nl'}
                                <div  class="CTA-button center-block">SPEEL NU</div>
                            {elseif $lang == 'es'}
                                <div  class="CTA-button center-block">DEPOSITA AHORA</div>
                            {/if}
                        </div>
                    </div>

                </div>
                <!-- end of button row -->
                <div class="row steps-d">
                    <div class="col-xs-12 hidden-sm hidden-xs">

                        {if $lang == 'ca'}
                            <img src="{$asset}/en/steps.png" alt="" class="img-responsive center-block">
                        {else}
                            <img src="{$asset}/{$lang}/steps.png" alt="" class="img-responsive center-block">
                        {/if}

                    </div>
                </div>
                <!-- end of lage screen steps -->

            </div>
            <!-- end of main container -->

        </section>
    </a>
    <!-- end of main section -->

    <a href="{$url}" rel="nofollow">
        <section class="steps">
            <div class="container-fluid">
                <div class="row visible-sm visible-xs">
                    <div class="text-center">
                        <h3>{$text}</h3>
                    </div>
                </div>


                <div class="row">
                    <div class="col-xs-12 visible-sm visible-xs">
                        {if $lang == 'ca'}
                            <img src="{$asset}/en/steps_mobile.png" alt="" class="img-responsive center-block">
                        {else}
                            <img src="{$asset}/{$lang}/steps_mobile.png" alt="" class="img-responsive center-block">
                        {/if}

                    </div>
                </div>
                <!-- end of small sreen steps -->

            </div>

        </section>
    </a>
    <!-- end of steps section -->
    <section id="terms">
        <div class="container">
            <div class="row terms">
                <div class="col-xs-11 ">
                    <br>
                    <p class="pull-left  terms">
                        *<a href="#modal">
                            <span class="text-white">Teilnahmebedingungen</span>

                        </a>
                    </p>

                    <br>

                </div>
            </div>
        </div>
    </section>
    <section id="footer" class="bg-darkgrey">
        <div class="container">
            {include file="lab/organisms/footer/footer-main.tpl"}
        </div>
    </section>
    <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
        <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
        <div>
            {include file=$smarty.current_dir|cat:"/terms.tpl"}
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

            {if $lang == 'ca'}
            $("#modal1Desc").load("en/terms.html");
            {elseif $lp == '215freispiele' and $lang == 'de'}
            $("#modal1Desc").load("215freispiele/{$lp}/{$lang}/terms.html");
            {else}
            $("#modal1Desc").load("{$lang}/terms.html");
            {/if}

        });
    </script>

{/block}

