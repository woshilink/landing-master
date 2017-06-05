{extends file="base/base.tpl"}
{block name=title}
    Editable title of landing pages
{/block}
{block name=head}

    <link rel="stylesheet" href="src/css/main.css">
    <link href="{$asset}/styles.css" rel="stylesheet">

    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">
{/block}
{block name=body}
    <header>
        <div class="container">
            <nav class="navbar bg-black ">
                <div class="row">
                    <div class="col-xs-6 col-sm-4  logo">
                        <a href="{$cta.casino}" rel="nofollow">
                            <img src="src/img/netbet/logo.png" class="img-responsive center-block" alt="">
                        </a>

                    </div>
                    <!-- end of logo  -->
                    <div class="col-xs-4 header-text text-center hidden-xs">
                        <h3>{$text}</h3>
                    </div>
                    <!--  end of text  -->
                    {if $co_logo}
                        <div class="col-xs-6 col-sm-4 logo">
                            <img src="{$co_logo}" class="img-responsive center-block" alt="">
                        </div>
                        <!-- end of co logo -->
                    {/if}
                </div>
            </nav>
            <!-- end of nav Bar  -->
        </div>
    </header>
    <!-- end of header -->
    <section class="main">
        <div class="container">
            <div class="row visible-xs">
                <div class="col-xs-12">
                    <a href="{$cta.casino}" rel="nofollow">
                        <img src="{$asset}/bg-mobile.png" class="img-responsive center-block" classalt="Mobile background">
                    </a>
                </div>
            </div>
            <!-- end of mobile background -->
            <div class="row">
                <div class="col-xs-4 hidden-xs left-box">
                    <div class="offer">
                        <a href="{$cta.casino}" rel="nofollow">
                            <img src="{$asset}/offer.png" class="img-responsive center-block" alt="">
                        </a>
                    </div>
                    <!-- end of offer -->
                    <div class="button">
                        <a href="{$cta.casino}" rel="nofollow">
                            <img src="{$asset}/button.png" alt="" class="img-responsive center-block">
                        </a>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-5 col-sm-offset-2 frame hidden-xs">
                    <video width="100%" height="100%"  controls autoplay muted>
                        <source src="{$asset}/video.mp4" type="video/mp4">
                    </video>
                </div>
            </div>
        </div>
        <!-- end of container  -->
    </section>
    <!-- end of section -->
    <div class="container-fluid">
        <div class="row text-center" style="margin-top: 15px;">
            {if $lp == 'starburst'}
                <span style="color: #ffffff;">New customers only | £200 deposit bonus | Rollover is x30 | 25 Free Spins rollover x 40 | T&amp;Cs apply</span>
            {else}
                <span style="color: #ffffff;">{$legal_txt}</span>
            {/if}
        </div>
    </div>
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
                        <img src="{$asset}/steps.png" alt="" class="img-responsive center-block">
                    </a>
                </div>
            </div>
            <!-- end of large screen steps -->
            <div class="row">
                <div class="col-xs-12 visible-xs">
                    <a href="{$cta.casino}" rel="nofollow">
                        <img src="{$asset}/steps_mobile.png" alt="" class="img-responsive center-block">
                    </a>
                </div>
            </div>
            <!-- end of small screen steps -->
        </div>

    </section>
    <!-- end of steps row -->
    <section id="terms">
        <div class="container-fluid">
            <div class="row terms">
                <div class="col-xs-11 hidden-xs">
                    <br>
                    <p class="pull-left hidden-xs terms">
                        *<a href="#modal">
                            <span class="text-white"> Terms &amp; Conditions</span>

                        </a>
                    </p>

                    <br>

                </div>
            </div>
        </div>
    </section>
    <section id="footer" class="bg-darkgrey">
        <div class="container-fluid">
            {include file="lab/organisms/footer/footer-main.tpl"
            responsible_text_header = 'RESPONSIBLE GAMING'
            payment_text_header = 'PAYMENT METHODS'
            }
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
        $(function(){
            {if $lp == 'starburst'}
            $("#modal1Desc").load("terms/starburst.html");
            {else}
            $("#modal1Desc").load("terms.html");
            {/if}
        });
    </script>
{/block}


