{extends file="base/base.tpl"}
{block name=title}
    Netbet Casino
{/block}
{block name=head}
    <link rel="stylesheet" href="{$asset}/css/casino.css">
    <link rel="stylesheet" href="src/css/main.css">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">
    <script type="text/javascript"> var device_is_mobile = false; </script>


    <style>
        #footer{
            margin-top: 35px;
            color: grey;
        }
    </style>

{/block}
{block name=body}
<!-- body start -->
<!--TEMPLATE START-->
<!--header start-->
<section id="main-nav">
    <nav class="navbar black-transparent">
        <div class="container">
            {include file="lab/organisms/nav/nav-main.tpl" text=$text}
        </div>
    </nav>
</section>
<!--header end--> <!--content start-->
<div class="content-holder main-slider" id="slider">
    <div class="my-content">
        <div class="main-cta-wrapper">
            <div class="main-cta">
                <a href="{$cta.casino}" style="text-decoration: none">
                <div class="justify">
                    <h1 class="text-1"></h1>
                    <h2 class="text-2">DOUBLE</h2>
                    <h2 class="text-3">YOUR FIRST DEPOSIT UP TO</h2>
                    <h3 class="text-4">£200</h3>
                    <a href="https://banners.livepartners.com/click.php?p=120&amp;l=en-GB&amp;id=&amp;lp=200double-offer&amp;bid2land=1&amp;t=register" class="button yellow">PLAY NOW</a>
                </div>
                </a>
            </div>
            <div class="slider-wrapper">
                <img src="{$asset}/img/img-3.png" data-depth="0.12" class="img-4 layer" id="img-4" />
                <img src="{$asset}/img/img-4.png" data-depth="0.08" class="img-3 layer" id="img-3" />
                <img src="{$asset}/img/img-2.png" data-depth="0.04" class="img-2 layer" id="img-2" />
                <img src="{$asset}/img/img-1.png" data-depth="0.03" class="img-1 layer" id="img-1" />
            </div>    </div>

        <!--footer start-->


        <!--footer end--><div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
            <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
            <div>
                {include file="pages/landing/{$domain}/terms/{$product}/welcome-offer/terms.tpl"}
            </div>
            <!-- loadind terms from terms from Jquery -->
            <br>
            <button data-remodal-action="confirm" class="remodal-confirm">OK</button>
        </div>
    </div>
</div>
    <a href="{$cta.casino}">
    <section id="steps" class="text-white">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 ">
                    <div class="step">
                        <div class="number">1</div>
                        <div class="text">
                            <h4 class="heading" style="letter-spacing: 0; font-family: 'MS PGothic', sans-serif;">REGISTER</h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 ">
                    <div class="step">
                        <div class="number">2</div>
                        <div class="text">
                            <h4 class="heading" style="letter-spacing: 0; font-family: 'MS PGothic', sans-serif;">DEPOSIT</h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 ">
                    <div class="step">
                        <div class="number">3</div>
                        <div class="text">
                            <h4 class="heading" style="letter-spacing: 0; font-family: 'MS PGothic', sans-serif;">PLAY</h4>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
    </a>
    <section id="terms" style="margin-top: 20px">
        <div class="container">
            <div class="row terms">
                <div class="col-xs-11 hidden-xs">
                    <br>
                    <p class="pull-left hidden-xs terms">
                        *<a href="#modal" style="text-decoration: none">
                            <span class="text-white">Terms &amp; Conditions</span>
                        </a>
                    </p>
                    <br>
                </div>
            </div>
        </div>
    </section>


    <section id="footer" class="bg-darkgrey">
        <div class="container">
            {include file="lab/organisms/footer/footer-main.tpl"
            responsible_text_header = '安全と信頼'
            payment_text_header = 'お支払い方法'
            }
        </div>
    </section>


    <!--TEMPLATE END-->
    {/block}
    {block name=footer}


        <script src="{$asset}/js/move.js"></script>
        <script src="src/js/remodal.min.js"></script>

    {/block}






