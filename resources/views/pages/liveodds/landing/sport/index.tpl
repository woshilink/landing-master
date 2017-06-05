{extends file="base/base.tpl"}

{block name=title}{$name} {$title}{/block}

{block name=head}
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <link href="{$asset}/style.css" rel="stylesheet">
    <link href="src/css/remodal.css" rel="stylesheet">
    <link href="src/css/remodal-default-theme.css" rel="stylesheet">

{/block}

{block name=body}


    {include file="lab/organisms/nav/nav-main.tpl"}
    <a href="{$url}">
        <section class="content hidden-xs">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-6 col pull-right">
                        <img src="{$asset}/{$lang}/img/offer.png" class="img-responsive center-block" alt="">
                        <!--<span class="text-1">CONSIGUE HASTA</span>
                        <span class="text-2">100€ GRATIS</span>
                        <span class="text-3">SIN DEPOSITO</span>-->
                        <div class="button">
                            <a href="{$url}">REG&Iacute;STRATE AHORA</a>
                            <!--<img src="{$asset}/{$lang}/img/btn.png" class="img-responsive center-block" alt="">-->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="mobile visible-xs">
            <img src="{$asset}/{$lang}/img/offer.png" class="img-responsive center-block" alt="">
            <div class="button">
                <a href="{$url}">REG&Iacute;STRATE AHORA</a>
                <!--<img src="{$asset}/{$lang}/img/btn.png" class="img-responsive center-block" alt="">-->
            </div>
        </section>
        <section class="steps">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-4">
                        <div class="step-1">
                            <div class="number">1</div>
                            <h5>REG&Iacute;STRATE AHORA</h5>
                        </div>
                    </div>
                    <div class="col-sm-12 col-md-4">
                        <div class="step-2">
                            <div class="number">2</div>
                            <h5>OBT&Eacute;N TU BONO</h5>
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
