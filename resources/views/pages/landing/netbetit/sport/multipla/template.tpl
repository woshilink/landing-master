{extends file="base/base.tpl"}


{assign "lpconf" "{$smarty.current_dir}/lp.conf"}
{config_load file=$lpconf}
{block name=title}
    Netbet - {$product}
{/block}
{block name=head}
    <link href="{URL::to('/')}/src/css/main.css" rel="stylesheet">
    <link href="{$asset}/app.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Rajdhani:700" rel="stylesheet">
    <style>
        .fullscreen-bg{
            position: absolute;
            top: -15px;
            right: 0;
            bottom: 0;
            left: 0;
            overflow: hidden;
            background-position-x: center;
            z-index: -100;
            background-image: url('{$asset}/bg.jpg');
        }
        .custom-right-logo img{
            max-width: 90px;
        }

    </style>


{/block}

{block name=body}

    <section id="main-nav">
        <nav class="navbar black-transparent navbar-fixed-top">
            <div class="container">
                {include file="lab/organisms/nav/nav-main.tpl" text=#text#}
            </div>
        </nav>
    </section>
    <section id="main-content">
        <img src="{$asset}/nuovo-r.png" alt="" class="nuovo-sticker hidden-xs hidden-sm" />
        <div class="fullscreen-bg"></div>
        <div class="container">
            <div class="row price-wrapper text-center">
                <div class="col-xs-12 col-md-5 pull-right">
                    <div class="main-cta">
                        <div class="justify text-uppercase">
                            <img src="{$asset}/acca.png" alt="">
                            <h2 class="text-white text3" >{#text1#}</h2>
                            <h2 class="text-yellow text2" >{#text2#}</h2>
                            <h3 class="text-white text1">{#text3#}</h3>
                        </div>
                        <div >
                            <a href="{$cta.sport}" class="btn-primary btn loaded-y register-cta">{#cta#}</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <a href="{$cta.sport}">
    <section id="steps" class="bg-grey">
        <div class="container">
            {include file="lab/organisms/steps/3steps.tpl"
            class='col-xs-12 col-sm-12- col-md-4'
            step1=#step1#
            step2=#step2#
            step3=#step3#
            step1text=#step1text#
            step2text=#step2text#
            step3text=#step3text#
            }
        </div>
    </section>
    </a>
    <section id="terms" class="bg-darkgrey">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <a href="" class="text-white">
                        {#terms#}
                    </a>
                </div>
            </div>
            <div class="row hidden ">
                <div class="terms-text">
                    <div class="col-xs-12" style=" font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif">
                        <br>
                        {include file="pages/landing/{$domain}/terms/{$product}/rimborso/terms.tpl"}
                    </div>
                </div>

            </div>
        </div>
    </section>
    <section id="footer" class="bg-darkgrey">
        <div class="container">
            {include file="lab/organisms/footer/footer-main.tpl"}
        </div>
    </section>

    <div class="hidden">
        <div class="col-xs-4 hidden-xs custom-right-logo">
            <img src="src/img/mobile.png" style="float: right;">
        </div>



    </div>
{/block}


{block name=footer}
    <script src="{URL::to('/')}/src/js/emodal.js"></script>
    <script type="text/javascript">
        $(".custom-right-logo").appendTo(".navbar .container .row");
        var options = {
            message: $('.terms-text'),
            title: "* Termini e Condizioni",
            size: eModal.size.lg,
            buttons: [
                {literal}
                {text: 'OK', style: 'btn btn-danger',   close: true},
                {/literal}

            ],

        };
        $( "#terms a" ).click(function(e) {
            e.preventDefault();
            eModal.alert(options);
        });
    </script>

{/block}