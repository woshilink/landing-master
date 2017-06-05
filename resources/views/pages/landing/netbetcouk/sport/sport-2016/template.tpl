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
                {include file="lab/organisms/nav/nav-main.tpl" text='New Customer Welcome Offer'}
            </div>
        </nav>
    </section>
    <section id="main-content">
        <div class="fullscreen-bg"></div>
        <div class="container">
            <div class="row price-wrapper text-center">
                <div class="col-xs-12">
                    <div class="main-cta">
                        <div class="justify text-uppercase">
                            <a href="{$cta.sport}" style="text-decoration: none">
                            <h2 class="text-white text1" >{#text1#}</h2>
                            <h2 class="text-yellow text2" >{#text2#}</h2>
                            <h3 class="text-white text1">{#text3#}</h3>
                            </a>
                        </div>
                        <div >
                            <a href="{$cta.sport}" class="btn-primary btn loaded-y register-cta">{#cta#}</a>

                        </div>
                        <span class="terms-wrap text-white">
                            	New Customers Only<br>Enter Code WELCOME50<br>Playthrough is x6 (Deposit &amp; Bonus)<br><span onclick="location='#modal'" class="terms"><u>T&amp;C's Apply*</u></span>
                        	</span>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <section class="new-payment bg-grey-dark">
        <div class="container">
            {include file="lab/organisms/extra/paypal-bitcoin.tpl"}
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
                <h2 class="text-center text-white section-heading">Our special offers</h2>
            </div>
            {include file="lab/organisms/cards/3cards-img.tpl"
            card1heading = #card1heading#
            card2heading = #card2heading#
            card3heading = #card3heading#

            card1img = $asset|cat:'/img/horse.jpg'
            card2img = $asset|cat:'/img/mobilenew.jpg'
            card3img = $asset|cat:'/img/promotions.png'

            card1text = #card1text#
            card2text = #card2text#
            card3text = #card3text#

            card1url = $cta.sport
            card2url = $cta.sport
            card3url = $cta.sport

            button1text ='<img src="'|cat:{$asset}|cat:'/img/right-arrow.png" height="18" width="18">&nbsp;&nbsp;BET NOW'
            button2text ='<img src="'|cat:{$asset}|cat:'/img/right-arrow.png" height="18" width="18">&nbsp;&nbsp;BET NOW'
            button3text ='<img src="'|cat:{$asset}|cat:'/img/right-arrow.png" height="18" width="18">&nbsp;&nbsp;BET NOW'
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
    <div class="hidden">
        <p class="text-4 text-white text-center" style="line-height: 1.5em;">New Customers Only / Enter Code WELCOME50 / Playthrough is x6 (Deposit &amp; Bonus) / T&amp;Cs Apply</p>
        <p class="text-5 text-white text-center" style="line-height: 1.5em;">Existing customers / Bonus must be rolled over x8 Min at odds 3/5 or above / T&amp;Cs apply</p>
    </div>
{/block}


{block name=footer}
    <script src="{URL::to('/')}/src/js/emodal.js"></script>
    <script type="text/javascript">

        var options = {
            message: $('.terms-text'),
            title: "Terms & Conditions",
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

        $(".card1").append( $(".text-4"));
        $(".card2").append( $(".text-5"));
    </script>

{/block}