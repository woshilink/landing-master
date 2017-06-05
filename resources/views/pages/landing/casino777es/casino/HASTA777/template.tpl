{extends file="base/base.tpl"}

{block name=title}{$name} {$title}{/block}

{block name=head}
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link href="{$asset}/style.css" rel="stylesheet">
    <link href="src/css/main.css" rel="stylesheet">
    <link href="src/css/remodal.css" rel="stylesheet">
    <link href="src/css/remodal-default-theme.css" rel="stylesheet">
    <style media="screen">
        @font-face {
            font-family: 'DINPro';
            src: url('src/fonts/DINPro-Medium.eot');
            src: url('src/fonts/DINPro-Medium.eot?#iefix') format('embedded-opentype'),
            url('src/fonts/DINPro-Medium.woff2') format('woff2'),
            url('src/fonts/DINPro-Medium.woff') format('woff'),
            url('src/fonts/DINPro-Medium.ttf') format('truetype'),
            url('src/fonts/DINPro-Medium.svg#DINPro-Medium') format('svg');
            font-weight: 500;
            font-style: normal;
        }

        @font-face {
            font-family: 'DINPro';
            src: url('src/fonts/DINPro-Bold.eot');
            src: url('src/fonts/DINPro-Bold.eot?#iefix') format('embedded-opentype'),
            url('src/fonts/DINPro-Bold.woff2') format('woff2'),
            url('src/fonts/DINPro-Bold.woff') format('woff'),
            url('src/fonts/DINPro-Bold.ttf') format('truetype'),
            url('src/fonts/DINPro-Bold.svg#DINPro-Bold') format('svg');
            font-weight: bold;
            font-style: normal;
        }

        @font-face {
            font-family: 'DINPro';
            src: url('src/fonts/DINPro-Light.eot');
            src: url('src/fonts/DINPro-Light.eot?#iefix') format('embedded-opentype'),
            url('src/fonts/DINPro-Light.woff2') format('woff2'),
            url('src/fonts/DINPro-Light.woff') format('woff'),
            url('src/fonts/DINPro-Light.ttf') format('truetype'),
            url('src/fonts/DINPro-Light.svg#DINPro-Light') format('svg');
            font-weight: 300;
            font-style: normal;
        }

        @font-face {
            font-family: 'DINPro';
            src: url('src/fonts/DINPro-Black.eot');
            src: url('src/fonts/DINPro-Black.eot?#iefix') format('embedded-opentype'),
            url('src/fonts/DINPro-Black.woff2') format('woff2'),
            url('src/fonts/DINPro-Black.woff') format('woff'),
            url('src/fonts/DINPro-Black.ttf') format('truetype'),
            url('src/fonts/DINPro-Black.svg#DINPro-Black') format('svg');
            font-weight: 900;
            font-style: normal;
        }

        @font-face {
            font-family: 'DINPro';
            src: url('src/fonts/DINPro-Regular.eot');
            src: url('src/fonts/DINPro-Regular.eot?#iefix') format('embedded-opentype'),
            url('src/fonts/DINPro-Regular.woff2') format('woff2'),
            url('src/fonts/DINPro-Regular.woff') format('woff'),
            url('src/fonts/DINPro-Regular.ttf') format('truetype'),
            url('src/fonts/DINPro-Regular.svg#DINPro-Regular') format('svg');
            font-weight: normal;
            font-style: normal;
        }
        .content{
            background-image: url('{$asset}/{$lang}/img/bg-alt.jpg');
        }
        .mobile{
            background-image: url('{$asset}/{$lang}/img/mobile-alt.jpg');
        }
    </style>
{/block}

{block name=body}
    {assign "lpconf" "{$smarty.current_dir}/{$lang}/lp.conf"}
    {config_load file=$lpconf}

    <section id="main-nav">
        <nav class="navbar black-transparent ">
            <div class="container">
                {include file="lab/organisms/nav/nav-main.tpl" text=$text link=$cta.casino}
            </div>
        </nav>
    </section>

        <section class="content hidden-xs">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-6 col pull-right bring-down">
                        <!--<img src="{$asset}/{$lang}/img/offer.png" class="img-responsive center-block" alt="">-->
                        <span class="text-2">HASTA 100€</span>
                        <span class="text-1">POR REGISTRO</span>
                        <span class="text-3">Y</span>
                        <span class="text-2">HASTA 777€</span>
                        <span class="text-1">CON 1er DEPÓSITO</span>
                        <div class="button">
                            <a href="{$cta.casino}">REG&Iacute;STRATE AHORA</a>
                            <!--<img src="{$asset}/{$lang}/img/btn.png" class="img-responsive center-block" alt="">-->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="mobile visible-xs">
            <!--<img src="{$asset}/{$lang}/img/offer.png" class="img-responsive center-block" alt="">-->
            <span class="text-2">HASTA 100€</span>
            <span class="text-1">POR REGISTRO</span>
            <span class="text-3">Y</span>
            <span class="text-2">HASTA 777€</span>
            <span class="text-1">CON 1er DEPÓSITO</span>
            <div class="button">
                <a href="{$cta.casino}">REG&Iacute;STRATE AHORA</a>
                <!--<img src="{$asset}/{$lang}/img/btn.png" class="img-responsive center-block" alt="">-->
            </div>
        </section>
    <a href="{$cta.casino}">
        <section class="steps">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-4">
                        <div class="step-1">
                            <div class="number">1</div>
                            <h5>REGÍSTRATE Y OBTÉN HASTA 100€</h5>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-4">
                        <div class="step-2">
                            <div class="number">2</div>
                            <h5>DUPLICA TU 1er DEPÓSITO HASTA 777€</h5>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-4">
                        <div class="step-3">
                            <div class="number">3</div>
                            <h5>JUEGA Y GANA EN NUESTRO CASINO</h5>
                        </div>
                    </div>
                </div>

            </div>
        </section>
    </a>
    <div class="container">
        {include file="lab/organisms/footer/footer-main.tpl" }
        <!-- /////////////////////////////////////////////start of nl footer /////////////////////-->
    </div>

{/block}

{block name="footer"}
    <script src="//rawgit.com/saribe/eModal/master/dist/eModal.min.js"></script>
    <script type="text/javascript">
        var options = {
            message: '{#terms#}',
            title: '{#terms_title#}',
            size: 'sm',
            buttons: [
                {
                    text: '{#close#}', style: 'danger',   close: true
                }
            ]
        };

        $( "footer .footer-text a" ).click(function() {
            eModal.alert(options);
        });
    </script>
{/block}
