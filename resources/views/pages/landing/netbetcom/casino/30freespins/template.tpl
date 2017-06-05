{extends file="base/base.tpl"}
{block name=title}
    {$brand|capitalize} {$product|capitalize} {* Editable title of landing pages *}
{/block}
{block name=head}
    <link href="{$asset}/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/main.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">

    <style>
        .main{
            background-image: url('{$asset}/{$lang}/bg.jpg');
        }
        .steps{
            display: none;
        }
        @media only screen and (max-width : 767px) {

            .main{


                background-image: none;
            }
        }
        #logo img {
            width: 200px;
        }
        {if $lp == '30freespins' && $lang == 'de'}
        .offer {
            margin-top: 60px;
        }
        {/if}
    </style>

{/block}
{block name=body}
    <section id="main-nav">
        <nav class="navbar black-transparent ">
            <div class="container">
                {include file="lab/organisms/nav/nav-main.tpl" text=$text}
            </div>
        </nav>
    </section>
    <section class="mobile">
        <a href="{$url}" rel="nofollow">
            <div class="container-fluid">
                <div class="row visible-xs">
                    <div class="col-xs-12">
                        <img src="{$asset}/{$lang}/mobile.jpg" class="img-responsive center-block" classalt="Mobile background">
                        <div class="button">
                            <img src="{$asset}/{$lang}/button.png" class="img-responsive center-block" classalt="Mobile background">
                        </div>

                    </div>
                </div>
                <!-- end of mobile background -->
            </div>
        </a>
    </section>
    <section class="main">
        <div class="container">

            <div class="row">
                <div class="col-xs-5 hidden-xs pull-right">
                    <div class="offer">
                        <a href="{$url}" rel="nofollow">
                            <img src="{$asset}/{$lang}/offer.png" class="img-responsive center-block" alt="">
                        </a>
                    </div>
                    <!-- end of offer -->

                </div>

            </div>
            <div class="row" >

                <div class="col-xs-12 header-text text-center visible-xs">
                    <h3>{$text}</h3>
                </div>

            </div>
            <!-- end of mobile text -->
        </div>
        <!-- end of container  -->
    </section>
    <!-- end of section -->
    <section class="steps-live">
        <div class="container">

            <div class="row">
                <div class="col-xs-12 hidden-xs">
                    <a href="{$url}" rel="nofollow">
                        <img src="{$asset}/{$lang}/steps.png" alt="" class="img-responsive center-block">
                    </a>
                </div>
            </div>
            <!-- end of large screen steps -->
            <div class="row">
                <div class="col-xs-12 visible-xs">

                    <a href="{$url}" rel="nofollow">
                        <img src="{$asset}/{$lang}/steps_mobile.png" alt="" class="img-responsive center-block">


                </div>
            </div>
        </div>
        <!-- end of small screen steps -->
        </div>

    </section>
    <!-- end of steps row -->
    <section class="terms1">
        <div class="container-fluid">
            <a href="#modal">
                {if $lang == 'fr'}
                    <p>*Termes et Conditions</p>
                {elseif $lang == 'nl'}
                    <p>*Algemene voorwaarden</p>
                {elseif $lang == 'de'}
                    <p>* Teilnahmebedingungen</p>
                {else}
                    <p>*Terms & Condition</p>
                {/if}
            </a>

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


