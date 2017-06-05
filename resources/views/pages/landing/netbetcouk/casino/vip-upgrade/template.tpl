{extends file="pages/landing/netbetcouk/sport/tv-lander/template.tpl"}



{block name=title}
    Netbet - {$product}
{/block}
{block name=head}
    <link href="{URL::to('/')}/src/css/main.css" rel="stylesheet">
    <link href="{$asset}/app.css" rel="stylesheet">
    <link rel="stylesheet" href="{$asset}/remodal.css">
    <link rel="stylesheet" href="{$asset}/remodal-default-theme.css">
    <link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Rajdhani:700" rel="stylesheet">



{/block}

{block name=body}
    {assign "lpconf" "{$smarty.current_dir}/lp.conf"}
    {config_load file=$lpconf}

    <div id="body-wrapper" class="boom-lines boom-lines-under-image cta-enhanced underlayer- light-button arrows-carbon logo-partner product-promos social-boxes simple- fallback-">
        <!-- header start -->
        <section id="main-nav">
            <nav class="navbar black navbar-fixed-top">
                <div class="container">
                    {include file="lab/organisms/nav/nav-main.tpl" text='New Customer Welcome Offer'}
                </div>
            </nav>
        </section>

       <section id="main-content">
        <div class="fullscreen-bg"></div>
        <img src="/src/img/asot.png" alt="As Seen on TV" class="asot-button hidden-xs hidden-sm" style="position: absolute; top: 65px; left: 130px; width: 130px;">
        <div class="container">
            <div class="row price-wrapper text-center">
                <div class="col-xs-12">
                    <div class="main-cta">
                        <div class="justify text-uppercase" style="background-color: rgba(0,0,0,0.5); border-radius: 1em; padding-top: 10px;display: inline-block;">
                            <a href="{$cta.casino}">
                            <img src="{$asset}/200vip.png" alt="Offer" class="img-responsive center-block"></a>
                        </div>
                      <div class="button-wrapper">
                            <a data-promocode="WELCOME50" data-cta-action="same" href="https://banners.livepartners.com/click.php?p=120&l=en-GB&id=&lp=vip-upgrade&bid2land=1&t=register" class="btn-primary btn button loaded-y register-cta">SPIN NOW</a><br>
                            <span class="terms-wrap">
                                                        New customers only.<br />Bonus requires wagering<br />Minimum of &pound;500 first deposit for VIP consideration<br />
                                                            <a href="s" class="terms terms1">T&amp;C's Apply</a><br />
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </section>




    <section id="deposit" class="bg-darkgrey">
        <div class="container">
            {include file="lab/organisms/extra/paypal-bitcoin.tpl"}
        </div>
    </section>
        <a href="{$cta.casino}">
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
                <h2 class="text-center text-white section-heading">Our special offers</h2>
            </div>
            {include file="lab/organisms/cards/3cards-img.tpl"
            card1heading = #card1heading#
            card2heading = #card2heading#
            card3heading = #card3heading#

            card1img = 'src/img/box/live-dealers.jpg'
            card2img = 'src/img/box/casino-mobile.jpg'
            card3img = 'src/img/box/promotions-new.jpg'

            card1text = #card1text#
            card2text = #card2text#
            card3text = #card3text#

            card1url = $cta.sport
            card2url = $cta.sport
            card3url = $cta.sport

            button1text ='<img src="'|cat:{$asset}|cat:'/img/right-arrow.png" height="18" width="18">&nbsp;&nbsp;PLAY NOW'
            button2text ='<img src="'|cat:{$asset}|cat:'/img/right-arrow.png" height="18" width="18">&nbsp;&nbsp;PLAY NOW'
            button3text ='<img src="'|cat:{$asset}|cat:'/img/right-arrow.png" height="18" width="18">&nbsp;&nbsp;PLAY NOW'
            }
        </div>


    </section>

    <!-- bottom blocks start -->


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
                        {include file="pages/landing/netbetcouk/terms/casino/vip-upgrade/terms.tpl"}
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
                {text: 'Close', style: 'btn btn-danger',   close: true},
                {/literal}

            ],

        };
        $( "#terms a" ).click(function(e) {
            e.preventDefault();
            eModal.alert(options);
        });
         $( ".terms1" ).click(function(e) {
            e.preventDefault();
            eModal.alert(options);
        });
    </script>

{/block}
