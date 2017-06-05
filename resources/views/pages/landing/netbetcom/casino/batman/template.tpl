{extends file="base/base.tpl"}
{block name=title}
    {$brand|capitalize} {$product|capitalize} {* Editable title of landing pages *}
{/block}
{block name=head}

    <link href="{$asset}/{$lang}/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/main.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">

    {if $lang == 'nl' && $id == '338632' && $lp == 'starburst'}
        <style>
            .main {
                background-image: url('nl/videoLP/starburst/img/slot.jpg');
            }
        </style>
    {/if}
    <style>
        .main{
            background-image: url('{$asset}/{$lang}/bg.jpg');
            background-position: bottom;
            background-repeat: no-repeat;
            background-size: 100% 100% ;


        }
        {if $lang == 'de'}
            #footer h3{
                font-size: 14px;
            }
        {/if}
        #logo img {
            width: 200px;
        }
        .tc {
            margin-top: 20px;
        }
        .tc a span{
            color: white;
            text-decoration: none;
        }
        .tc a:hover{
            text-decoration: none;
        }
        
    </style>
{/block}
{block name=body}
    {assign "lpconf" "{$smarty.current_dir}/{$lang}/lp.conf"}
    {config_load file=$lpconf}
    <section id="main-nav">
        <nav class="navbar black-transparent ">
            <div class="container-fluid">
                {include file="lab/organisms/nav/nav-main.tpl" text=$text}
            </div>
        </nav>
    </section>
    <!-- end of header -->
    <section class="main">
        <div class="container">
            <div class="row visible-xs">
                <div class="col-xs-12">
                    <a href="{$cta.casino}" rel="nofollow">
                        <img src="{$asset}/{$lang}/bg-mobile.png" class="img-responsive center-block" classalt="Mobile background">
                    </a>
                </div>
            </div>
            <!-- end of mobile background -->
            <div class="row">
                <div class="col-xs-4 hidden-xs left-box">
                    <div class="offer">
                        <a href="{$cta.casino}" rel="nofollow">
                            <img src="{$asset}/{$lang}/offer.png" class="img-responsive center-block" alt="">
                        </a>
                    </div>
                    <!-- end of offer -->
                    <div class="button">
                        <a href="{$cta.casino}" rel="nofollow">
                            <img src="{$asset}/{$lang}/button.png" alt="" class="img-responsive center-block">
                        </a>
                    </div>
                </div>
                {if $lang == 'nl' && $id == '338632' && $lp == 'starburst'}

                {else}
                    <div class="col-xs-12 col-sm-6 col-md-5 col-sm-offset-2 frame hidden-xs">
                        <video width="100%" height="100%"  controls autoplay muted>
                            <source src="{$asset}/{$lang}/video.mp4" type="video/mp4">
                        </video>
                    </div>
                {/if}
            </div>
        </div>
        <!-- end of container  -->
    </section>
    <!-- end of section -->
    <section class="steps">
        <div class="container">
            <div class="row" >
                <div class="col-xs-12 header-text text-center visible-xs">
                    <h3>{$text}</h3>
                </div>

            </div>
            <!-- end of mobile text -->
            <div class="row">
                <div class="col-xs-12 hidden-xs">
                    <a href="{$cta.casino}" rel="nofollow">
                        {if $lang == 'nl' && $lp == 'starburst50'}
                            <img src="{$asset}/{$lang}/steps.png" alt="" class="img-responsive center-block">
                        {else}
                            <img src="{$asset}/{$lang}/steps.png" alt="" class="img-responsive center-block">
                        {/if}
                    </a>
                </div>
            </div>
            <!-- end of large screen steps -->
            <div class="row">
                <div class="col-xs-12 visible-xs">
                    <a href="{$cta.casino}" rel="nofollow">
                        {if $lang == 'nl' && $lp == 'starburst50'}
                            <img src="{$asset}/{$lang}/steps_mobile.png" alt="" class="img-responsive center-block">
                        {else}
                            <img src="{$asset}/{$lang}/steps_mobile.png" alt="" class="img-responsive center-block">
                        {/if}
                    </a>
                </div>
            </div>
            <!-- end of small screen steps -->
        </div>

    </section>
    <!-- end of steps section -->
    <section class="tc">
        <div class="container-fluid">
            <div class="row">
                <div  class="col-xs-12">
                    <a href="#modal" >
                        {if $lang == 'de'}
                            <span>* Teilnahmebedingungen</span>
                        {elseif $lang == 'ro'}
                            <span>* Termeni și condiții</span>
                        {elseif $lang == 'nl'}
                            <span>* Algemene voorwaarden</span>
                        {elseif $lang == 'fr'}
                            <span>* Conditions Générales</span>
                        {elseif $lang == 'el'}
                            <span>* Όροι και Συνθήκες</span>
                        {else}
                            <span>* Terms &amp; Conditions</span>
                        {/if}
                    </a>
                </div>
            </div>
        </div>
    </section>
    <section id="footer" class="bg-darkgrey">
        <div class="container-fluid">
            {include file="lab/organisms/footer/footer-main.tpl"
            responsible_text_header = #responsible_text_header#
            payment_text_header = #payment_text_header#
            }
        </div>
    </section>
    <!-- include footer -->

    <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
        <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
        <div>
            {include file="pages/landing/{$domain}/terms/{$product}/slot/{$lang}/terms.tpl"}
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
            {if $lang == 'nl' && $lp == 'starburst50'}

            $("#modal1Desc").load("{$lang}/videoLP/starburst50/terms.html");

            {else}

            $("#modal1Desc").load("{$lang}/terms.html");

            {/if}
        });
    </script>

{/block}
