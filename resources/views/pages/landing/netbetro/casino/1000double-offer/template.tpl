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
    <script type="text/javascript" src="{$asset}/js/general.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Maxymiser script start -->

    <script type="text/javascript" src="//service.maxymiser.net/cdn/com.netbet/js/mmapi.js"></script>
    <style>
        #logo{
            margin-top: 10px;
        }
        #logo img{
            width: 170px;
        }
        #footer{
            margin-top: 35px;
            color: #818181;
        }
        @font-face{
            font-family: 'Neon Lights';
            src: url('src/fonts/neon2.ttf');
            src: url('src/fonts/Neon-Lights.ttf.eot?#iefix') format('embedded-opentype'), url('src/fonts/Neon-Lights.ttf.woff') format('woff'), url('src/fonts/neon2.ttf') format('truetype'), url('src/fonts/Neon-Lights.ttf.svg#Neon-Lights') format('svg');
        }
        @font-face {
            font-family: 'Tungsten';
            src: url('src/fonts/Tungsten-Medium.ttf');
            src: url('src/fonts/Tungsten-Medium.eot?#iefix') format('embedded-opentype'), url('src/fonts/Tungsten-Medium.woff') format('woff'), url('src/fonts/Tungsten-Medium.ttf') format('truetype');
        }
        @font-face {
            font-family: 'Tungsten Light';
            src: ('src/fonts/Tungsten-Light.ttf');
            src: url('src/fonts/Tungsten-Light.eot?#iefix') format('embedded-opentype'), url('src/fonts/Tungsten-Light.woff') format('woff'), url('src/fonts/Tungsten-Light.ttf') format('truetype');
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
                    <div class="justify">

                        <h1 class="text-1"></h1>
                        <h2 class="text-2" style="font-size: 3.7em; font-family: 'MS PGothic', sans-serif;">DUBLEAZĂ-ȚI </h2>
                        <h2 class="text-3" style="font-size: 2.5em;">PRIMUL DEPOZIT PÂNĂ LA</h2>
                        <h3 class="text-4">800 RON</h3>
                        <a  href="{$cta.casino}" class="button yellow" style="font-family: 'MS PGothic', sans-serif;">APASĂ AICI</a>

                    </div>
                </div><div class="slider-wrapper">
                    <img src="{$asset}/img/img-3.png" data-depth="0.12" class="img-4 layer" id="img-4" />
                    <img src="{$asset}/img/img-4.png" data-depth="0.08" class="img-3 layer" id="img-3" />
                    <img src="{$asset}/img/img-2.png" data-depth="0.04" class="img-2 layer" id="img-2" />
                    <img src="{$asset}/img/img-1.png" data-depth="0.03" class="img-1 layer" id="img-1" />
                </div>    </div>

            <!--footer start-->

            </div>
        </div>
    </div>
    <a href="{$cta.casino}" style="color: white">
    <section id="steps">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 ">
                    <div class="step">
                        <div class="number">1</div>
                        <div class="text">
                            <h4 class="heading" style="letter-spacing: 0; font-family: 'MS PGothic', sans-serif;">ÎNREGISTREAZĂ-TE</h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 ">
                    <div class="step">
                        <div class="number">2</div>
                        <div class="text">
                            <h4 class="heading" style="letter-spacing: 0; font-family: 'MS PGothic', sans-serif;">DEPUNE</h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 ">
                    <div class="step">
                        <div class="number">3</div>
                        <div class="text">
                            <h4 class="heading" style="letter-spacing: 0; font-family: 'MS PGothic', sans-serif;">JOACĂ</h4>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>
    </a>
    <!-- end of modal pop up -->
    <section id="terms">
        <div class="container">
            <div class="row terms">
                <div class="col-xs-11 ">
                    <br>
                    <p class="  terms">
                        *<a href="#modal" style="text-decoration: none">
                            <span class="text-white">Termeni și condiții</span>

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

    <!--TEMPLATE END-->
    <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
        <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
        <div>
            {include file="pages/landing/{$domain}/terms/{$product}/800ron/terms.tpl"}
        </div>
        <!-- loadind terms from terms from Jquery -->
        <br>
        <button data-remodal-action="confirm" class="remodal-confirm">OK</button>
    </div>
    <!-- end of modal pop up -->
{/block}
{block name=footer}
    <script src="{$asset}/js/move.js"></script>
    <script src="src/js/remodal.min.js"></script>
    <!-- body end -->

{/block}






