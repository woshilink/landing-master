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
        .panel{
            background: rgba(0,0,0,0.6);
            border-radius: 5px;
        }
        .panel button{
            font-size: 1.5em;


        }
         .reg-button-wrapper {
             padding: 15px 0;
            border: 2px solid #baff00;
            border-radius: 5px;
        }
         .reg-button-wrapper span, .log-button-wrapper span{
             display: block;
         }
        .log-button-wrapper {
            padding: 15px 0;
             border: 2px solid #ffcc00;
             border-radius: 5px;
         }

         .reg-button-wrapper .button {
             background: #baff00 !important;
             color: #000000 !important;
         }
        .reg-text-1{
            font-size: 2.4em;
            line-height: 0.9em;
        }
        .reg-text-3{
            margin: 5px 0;
            line-height: 1em;
            font-size: 2.5em;
        }
        .reg-text-4{
            margin: 7px 0;
            line-height: 1em;
            font-size: 2.5em;
        }
        .text-green{
            color: #baff00 !important;
        }
        .free-bet-offer span{
            font-size: 7em;
            color: #ffffff;
            text-transform: uppercase;
        }
        #banner .free-bet-offer button{
            margin-top: 0;
            float: right;
            margin-top: .9em;
            margin-bottom: .5em;
        }
    </style>
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
                <div class="col-xs-12 col-sm-12 col-md-6 pull-right">
                    <div class="main-cta">
                        <div class="justify text-uppercase">
                            <h2 class="text-2 text-white" style="font-size: 5em;">Premier League</h2>
                            <h2 class="text-3 text-white" style="font-size: 7em; color: #ffffff !important;">2016/17</h2>
                            <h3 class="text-4 text-white" style="font-size: 3em; margin-bottom: 1em;">Play Your Season with NetBet</h3>


                        </div>
                        <div class="row">
                            <div class="col-xs-6">
                                <div class="panel text-center">
                                        <div class="reg-button-wrapper">
                                            <span class="reg-text-1 text-white">NEW</span>
                                            <span class="reg-text-1 text-white">ACCOUNTS</span>
                                            <span class="reg-text-3 text-white">BET £10</span>
                                            <span class="reg-text-3 text-green" >GET £25</span>
                                            <span class="reg-text-1 text-white">BONUS</span>
                                            <button data-promocode="WELCOME50" data-cta-action="same" class="btn-primary button loaded-y register-cta" >REGISTER</button>
                                        </div>
                                </div>


                            </div>
                            <div class="col-xs-6">
                                <div class="panel text-center">
                                    <div class="log-button-wrapper">
                                        <span class="reg-text-1 text-white">EXISTING</span>
                                        <span class="reg-text-1 text-white">PLAYERS</span>
                                        <span class="reg-text-4 text-yellow">ACCA<br>BOOST</span>
                                        <span class="reg-text-1 text-white">REAL CASH!</span>
                                        <button data-promocode="WELCOME50" data-cta-action="same" class="btn-primary button loaded-y register-cta" >LOGIN</button>
                                    </div>
                                </div>

                            </div>

                        </div>
                        <span class="terms-wrap text-white text-center">
                            	<span class="terms-wrap">
                                    18+ | £25 free bet rollover is x6 | Free Bet is 250% of deposit & first bet | £10 Max deposit & bet | T&Cs apply
                                </span>
                        	</span>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <section id="banner" class="bg-black hidden-xs hidden-sm">
        <div class="container">
            <div class="row ">
              <div class="col-xs-12">
                  <div class="free-bet-offer">
                      <span class="text-white"> Get a </span>
                      <span class="text-yellow">£25</span>
                      <span class="text-text"> Bonus </span>
                      <button data-promocode="WELCOME50" data-cta-action="same" href="{$cta.sport}" class="btn-primary button loaded-y register-cta">BET NOW</button>
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
                        {include file="pages/landing/{$domain}/terms/{$product}/25NETBET/terms.tpl"}
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
        <p class="text-6 text-white text-center" style="line-height: 1.5em;">New Customers Only / Enter Code WELCOME50 / Playthrough is x6 (Deposit &amp; Bonus) / T&amp;Cs Apply</p>
        <p class="text-5 text-white text-center" style="line-height: 1.5em;">Existing customers / Bonus must be rolled over x8 Min at odds 3/5 or above / T&Cs apply</p>
    </div>
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

        $(".card1").append( $(".text-6"));
        $(".card2").append( $(".text-5"));
    </script>

{/block}