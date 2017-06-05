{extends file="base/base.tpl"}

{assign "lpconf" "{$smarty.current_dir}/{$lang}/lp.conf"}
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
            position: fixed;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            overflow: hidden;
            z-index: -100;
            background-image: url('{$asset}/bg.jpg');
        }
        .text-green{
            color: #baff00 !important;
            text-shadow: #000000 0 0 10px;
        }
    </style>
{/block}

{block name=body}
    {if $text}
        <span>{$text}</span>
    {else}
        {if $lang == 'de'}
            {$text='NEUKUNDEN WILLKOMMENS-ANGEBOT'}
        {elseif $lang == 'ro'}
            {$text ='BONUS DE BUN VENIT'}
        {elseif $lang == 'nl'}
            {$text='WELKOM AANBOD VOOR NIEUWE KLANTEN'}
        {elseif $lang == 'fr'}
            {$text='OFFRE EXCLU NOUVEAUX JOUEURS'}
        {elseif $lang == 'gr'}
            {$text='ΠΡΟΣΦΟΡΑ ΚΑΛΩΣΟΡΙΣΜΑΤΟΣ ΝΕΩΝ ΠΕΛΑΤΩΝ'}
        {else}
            {$text='New Customer Welcome Offer'}
        {/if}
    {/if}
    <section id="main-nav">
        <nav class="navbar black-transparent navbar-fixed-top">
            <div class="container">
                {include file="lab/organisms/nav/nav-main.tpl" text=$text}
            </div>
        </nav>
    </section>
    <a href="{$cta.sport}" style="text-decoration: none">
    <section id="main-content">
        <div class="fullscreen-bg"></div>
        <div class="container">
            <div class="row price-wrapper text-center">
                <div class=" col-xs-12">
                    <div class="main-cta">

                        <div class="justify">
                            {if $lang == 'nl'}
                                <h1 class="text-1"></h1>
                                <h2 class="text-3" style="line-height: 0.7em;">&euro;50</h2>
                                <h2 class="text-2" style="line-height: 1em;">Gratis</h2>
                                <h3 class="text-4" style="line-height: 0.7em;">Inzet</h3>
                                <h3 class="text-5"></h3>
                            {elseif $lang == 'ie'}
                                <h1 class="text-1"></h1>
                                <h2 class="text-2">Get a</h2>
                                <h2 class="text-3">&euro;50</h2>
                                <h3 class="text-4">Free Bet</h3>
                                <h3 class="text-5"></h3>
                            {elseif $lang == 'ru'}
                                <h1 class="text-1"></h1>
                                <h2 class="text-2">Get a</h2>
                                <h2 class="text-3">&dollar;50</h2>
                                <h3 class="text-4">Free Bet</h3>
                                <h3 class="text-5"></h3>
                            {elseif $lang == 'fr'}
                                <h1 class="text-1"></h1>
                                <h2 class="text-3">50&euro;</h2>
                                <h2 class="text-2" style="font-size: 5.6em;">Gratuits</h2>
                                <h3 class="text-4"></h3>
                                <h3 class="text-5"></h3>
                            {elseif $lang == 'gb'}
                                <h1 class="text-1"></h1>
                                <h2 class="text-2">Get a</h2>
                                <h2 class="text-3">&pound;50</h2>
                                <h3 class="text-4">Free Bet</h3>
                                <h3 class="text-5"></h3>
                            {elseif $lp == '100eur-willkommensbonus' && $lang == 'de'}
                                <h1 class="text-1"></h1>
                                <h2 class="text-2 text-white" style="font-size: 4.6em;">Bis zu</h2>
                                <h2 class="text-3 text-green" style="font-size: 5.5em; line-height: 1em;">100&euro; Bonus</h2>
                                <h3 class="text-4 text-white" style="font-size: 4em;">f&uuml;r Neukunden</h3>
                                <h3 class="text-5"></h3>
                            {elseif $lang == 'de'}
                                <h1>{$lp}</h1>
                                <h1 class="text-1"></h1>
                                <h2 class="text-2"></h2>
                                <h2 class="text-3" style="font-size: 13em;">100%</h2>
                                <h3 class="text-4" style="font-size: 3.7em;">Einzahlungsbonus</h3>
                                <h3 class="text-5"></h3>
                            {elseif $lang == 'gr'}
                                <h1 class="text-1"></h1>
                                <h2 class="text-2"></h2>
                                <h2 class="text-3" style="font-size: 13em;">&euro;100</h2>
                                <h3 class="text-4" style="font-size: 3.7em;">ΜΠΟΝΟΥΣ</h3>
                                <h3 class="text-5"></h3>
                            {elseif $lang == 'ro'}
                                <h1 class="text-1"></h1>
                                <h2 class="text-2" style="font-family: Arial, sans-serif; line-height: 1em; font-size: 3.9em;">Pariază în</h2>
                                <h3 class="text-4" style="font-family: Arial, sans-serif; line-height: 1em; font-size: 3.7em;">siguranță</h3>
                                <h2 class="text-3" style="font-size: 8.8em; line-height: 0.9em;">200 RON</h2>
                                <h3 class="text-5"></h3>
                            {else}
                                <h1 class="text-1"></h1>
                                <h2 class="text-2">Get a</h2>
                                <h2 class="text-3">&dollar;50</h2>
                                <h3 class="text-4">Free Bet</h3>
                                <h3 class="text-5"></h3>
                            {/if}
                        </div>

                        <div class="button-wrapper">
                            {if $lang == 'ro'}
                                <a data-promocode="NETBET200" data-cta-action="same" href="{$cta.sport}" target="_blank" class="btn-primary button loaded-y register-cta">PARIAZĂ ACUM</a>
                            {elseif $lang == 'de'}
                                <button data-promocode="100DE" data-cta-action="same" href="{$cta.sport}" target="_blank" class="btn-primary button loaded-y register-cta">JETZT WETTEN</button>
                            {elseif $lang == 'gb'}
                                <a data-promocode="WELCOME50" data-cta-action="same" href="{$cta.sport}" target="_blank" class="btn-primary button loaded-y register-cta">BET NOW</a>
                            {elseif $lang == 'gr'}
                                <a data-promocode="100GRE" data-cta-action="same" href="{$cta.sport}" target="_blank" class="btn-primary button loaded-y register-cta">ΕΓΓΡΑΦΗ</a>
                            {elseif $lang == 'ca'}
                                <a data-promocode="WELCOME50" data-cta-action="same" href="{$cta.sport}" target="_blank" class="btn-primary button loaded-y register-cta">BET NOW</a>
                            {elseif $lang == 'fr'}
                                <a data-promocode="WELCOME50" data-cta-action="same" href="{$cta.sport}" target="_blank" class="btn-primary button loaded-y register-cta">INSCRIVEZ-VOUS</a>
                            {elseif $lang == 'au'}
                                <a data-promocode="WELCOME50" data-cta-action="same" href="{$cta.sport}" target="_blank" class="btn-primary button loaded-y register-cta">BET NOW</a>
                            {elseif $lang == 'nl'}
                                <a data-promocode="NETBET100" data-cta-action="same" href="{$cta.sport}" target="_blank" class="btn-primary button loaded-y register-cta">ZET IN</a>
                            {elseif $lang == 'ru'}
                                <a data-promocode="WELCOME50" data-cta-action="same" href="{$cta.sport}" target="_blank" class="btn-primary button loaded-y register-cta">BET NOW</a>
                            {else}
                                <a data-promocode="WELCOME50" data-cta-action="same" href="{$cta.sport}" target="_blank" class="btn-primary button loaded-y register-cta">BET NOW</a>
                            {/if}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    </a>
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
                        {include file="pages/landing/{$domain}/terms/sport/welcome-offer/{$lang}/terms.tpl"}
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
    </script>

{/block}