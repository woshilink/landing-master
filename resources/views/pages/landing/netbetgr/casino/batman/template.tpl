{extends file="base/base.tpl"}
{block name=title}
    Naetbet {$product|capitalize}
{/block}
{block name=head}
    <link href="src/css/main.css" rel="stylesheet">
    <link href="{$asset}/css/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">

    <style>
        .footer-text{
            margin-top: 20px;
        }
        .container-fluid{
            max-width: 960px;
        }
    </style>
{/block}
{block name=body}
    <header>
        <section id="main-nav">
            <nav class="navbar  bg-black">
                <div class="container-fluid">
                    {include file="lab/organisms/nav/nav-main.tpl" text=$text}
                </div>
            </nav>
        </section>
    </header>
    <section class="main">
        <div class="container">
            <div class="row visible-xs">
                <div class="col-xs-12">
                    <a href="{$cta.casino}" rel="nofollow">
                        <img src="{$asset}/img/bg-mobile.png" class="img-responsive center-block" classalt="Mobile background">
                    </a>
                </div>
            </div>
            <!-- end of mobile background -->
            <div class="row">
                <div class="col-xs-4 hidden-xs left-box">
                    <div class="offer">
                        <a href="{$cta.casino}" rel="nofollow">
                            <img src="{$asset}/img/offer.png" class="img-responsive center-block" alt="">
                        </a>
                    </div>
                    <!-- end of offer -->
                    <div class="button">
                        <a href="{$cta.casino}" rel="nofollow">
                            <img src="{$asset}/img/button.png" alt="" class="img-responsive center-block">
                        </a>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-5 col-sm-offset-2 frame">
                    <video width="100%" height="100%"  controls autoplay muted>
                        <source src="{$asset}/video.mp4" type="video/mp4">
                    </video>
                </div>
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
                        <img src="{$asset}/img/steps.png" alt="" class="img-responsive center-block">
                    </a>
                </div>
            </div>
            <!-- end of large screen steps -->
            <div class="row">
                <div class="col-xs-12 visible-xs">
                    <a href="{$cta.casino}" rel="nofollow">
                        <img src="{$asset}/img/steps_mobile.png" alt="" class="img-responsive center-block">
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
                <div class="col-xs-11">
                    <br>
                    <p class="pull-left  terms">
                        *<a href="#modal">
                            <span class="text-grey-light">Όροι και Συνθήκες</span>

                        </a>
                    </p>

                    <br>

                </div>
            </div>
        </div>
    </section>
    <footer id="footer" >
        <div class="container-fluid wrapper-1170">
            {include
            file="lab/organisms/footer/footer-main.tpl"
            responsible_text_header='ΥΠΕΥΘΥΝΟ ΠΑΙΧΝΙΔΙ'
            payment_text_header='ΜΕΘΟΔΟΙ ΠΛΗΡΩΜΩΝ'

            }
        </div>
    </footer>

    <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
        <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
        <div>
            {include file="pages/landing/{$domain}/terms/{$product}/welcome-offer/terms.tpl"}
        </div>
        <!-- loadind terms from terms from Jquery -->
        <br>
        <button data-remodal-action="confirm" class="remodal-confirm">OK</button>
    </div>


{/block}
{block name=footer}
    <script src="src/js/remodal.min.js"></script>

{/block}






