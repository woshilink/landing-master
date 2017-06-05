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
        <div class="fullscreen-bg"></div>
        {*<img src="/src/img/asot.png" alt="As Seen on TV" class="asot-button hidden-xs hidden-sm" style="position: absolute; top: 65px; left: 130px; width: 130px;">*}
        <div class="container">
            <div class="row price-wrapper text-center">
                <div class=" col-xs-12">
                    <div class="main-cta">
                        <div class="justify text-uppercase">
                            <img src="{$asset}/img/offer.png" alt="Offer" class="img-responsive center-block">
                        </div>
                        <div class="button">
                            <a href="{$cta.casino}" class="btn-primary btn loaded-y register-cta">{#cta#}</a>
                        </div>
                        <span class="terms-wrap">
                            <a href="#modal" class="terms">Se Aplică Termenii și Condiții.</a><br>
                    </div>
                </div>
            </div>
        </div>
    </section>

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

    <section id="special-offers" class="bg-darkgrey">
        <div class="container">
            <div class="row">
                <h2 class="text-center text-white section-heading">{#sectionHeading#}</h2>
            </div>
            {include file="lab/organisms/cards/3cards-img.tpl"
            card1heading = #card1heading#
            card2heading = #card2heading#
            card3heading = #card3heading#

            card1img = $asset|cat:'/img/live-dealers.jpg'
            card2img = $asset|cat:'/img/casino-mobile.jpg'
            card3img = $asset|cat:'/img/promotions-new.jpg'

            card1text = #card1text#
            card2text = #card2text#
            card3text = #card3text#

            card1url = $cta.sport
            card2url = $cta.casino
            card3url = $cta.casino

            button1text ='<img src="'|cat:{$asset}|cat:'/img/right-arrow.png" height="18" width="18">&nbsp;&nbsp;PARIAZĂ ACUM'
            button2text ='<img src="'|cat:{$asset}|cat:'/img/right-arrow.png" height="18" width="18">&nbsp;&nbsp;JOACĂ ACUM'
            button3text ='<img src="'|cat:{$asset}|cat:'/img/right-arrow.png" height="18" width="18">&nbsp;&nbsp;JOACĂ ACUM'
            }
        </div>


    </section>
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
                        {include file="pages/landing/{$domain}/terms/{$product}/welcome-offer/terms.tpl"}
                    </div>
                </div>

            </div>
        </div>
    </section>
    <section id="footer" class="bg-darkgrey">
        <div class="container">
            {include file="lab/organisms/footer/footer-main.tpl"
            responsible_text_header = #responsible_text_header#
            payment_text_header = #payment_text_header#
            payment_methods = $content.payment_methods
            responsibles = $content.responsibles
            }
        </div>
    </section>
{/block}


{block name=footer}
    <script src="{URL::to('/')}/src/js/emodal.js"></script>
    <script type="text/javascript">

        var options = {
            message: $('.terms-text'),
            title: "Termeni & Condiţii",
            size: eModal.size.lg,
            buttons: [
                {literal}
                {text: 'Close', style: 'btn btn-danger',   close: true},
                {/literal}

            ],

        };
        $( "#terms a" ).click(function(e) {
            e.preventDefault();
            eModal.alert(options);
        });
        $( ".terms-wrap a" ).click(function(e) {
            e.preventDefault();
            eModal.alert(options);
        });
    </script>

{/block}