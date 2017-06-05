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
        <div class="container">
            <div class="row price-wrapper text-center">
                <div class=" col-xs-12">
                    <div class="main-cta">
                        <a href="{$cta.sport}" style="text-decoration: none">
                            <div class="justify text-uppercase">
                                <h2 class="text-white text3" >{#text1#}</h2>
                                <h2 class="text-white text2" >{#text2#}</h2>
                                <h3 class="text-yellow text1">{$prize.sport}{#text3#}</h3>
                            </div>
                        </a>
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

    <section id="special-offers" class="bg-darkgrey">
        <div class="container">
            <div class="row">
                <h2 class="text-center text-white section-heading">{#sectionHeading#}</h2>
            </div>
            {include file="lab/organisms/cards/3cards-img.tpl"
                card1heading = #card1heading#
                card2heading = #card2heading#
                card3heading = #card3heading#

                card1img = $asset|cat:'/img/dan.jpg'
                card2img = $asset|cat:'/img/mobilenew.jpg'
                card3img = $asset|cat:'/img/promotions.png'

                card1text = #card1text#
                card2text = #card2text#
                card3text = #card3text#

                card1url = $cta.sport
                card2url = $cta.sport
                card3url = $cta.sport

                button1text = #card1button#
                button2text = #card2button#
                button3text = #card3button#
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
                        {include file="pages/landing/netbetit/terms/sport/welcome-offer/terms.tpl"}
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
            title: " ",
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