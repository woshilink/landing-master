{extends file="base/netbet-base.tpl"}
    {block name=title}Netbet Casino{/block}
    {block name=head}
        <link href="/src/css/main.css" rel="stylesheet">#
        <link href="{$resource}/style.css" rel="stylesheet">
        <style>
            body{
                background-color: #1e1e1e;
            }

        </style>
    {/block}

    {block name=body}
        <nav class="navbar bg-black">
            <div class="container-fluid wrapper-1170">
                <div class="row">
                    {include  file="lab/organisms/nav/nav-main.tpl"}
                </div>
            </div>
        </nav>
        <section class="main-content">
            <div class="main-cta animated" id="offer-1" style="opacity: 0; padding: 5em 0;">
                <div class="justify">
                    <img src="tv-lander/src/img/25freespins.png">
                    <h1 class="text-1"></h1>
                    <h3 class="text-5"></h3>
                </div>
                <div class="button-wrapper">
                    <a data-promocode="WELCOME50" data-cta-action="same" href="https://banners.livepartners.com/click.php?p=120&amp;l=en-GB&amp;id=&amp;bid2land=1&amp;t=register&amp;_ga=1.135700274.2092947639.1469625343" class="btn-primary button loaded-y register-cta">SPIN NOW</a>
                    <span class="terms-wrap">
                            New players only.<br> 25 no deposit free spins,<br> 40x wagering and<br>
                            	<a href="#modal" class="terms">T&amp;C's Apply</a><br>
                              <span class="bonusCode">BONUS CODE: <span style="color: #f00 !important;">NETBET</span></span>
                                <img src="tv-lander/src/img/asot.png" alt="As Seen on TV" class="asot-button-m" style="width: 50px; margin-left: auto; margin-right: auto; margin-top: 8px;">
                    </span>
                </div>
            </div>
        </section>
        <section class="mid-payment bg-grey-dark">
            <div class="container-fluid wrapper-1170">
                {include file="lab/organisms/extra/paypal-bitcoin.tpl"}
            </div>
        </section>
        <section class="stteps bg-grey-light">
            <div class="container-fluid wrapper-1170">

                        {include
                        file="lab/organisms/steps/3steps-nest.tpl"
                        class='col-xs-12 col-sm-4 col-md-4'
                        step1=$content.step1
                        step2=$content.step2
                        step3=$content.step3
                        step1text="Create an account with NetBet Casino using promo code <strong style='color: #ffcc00;'>NETBET</strong> and you'll get 25 no deposit Free Spins."
                        step2text="Make your first deposit and you'll recieve your welcome 100% match up bonus up to £200."
                        step3text="Join the party! Spin, play & win!"
                        }

            </div>
        </section>
        <footer id="footer" >
            <div class="container-fluid wrapper-1170">
                        {include
                        file="lab/organisms/footer/footer-main.tpl"
                        responsible_text_header=$content.responsible_text_header
                        payment_text_header=$content.payment_text_header
                        payment_methods=$content.payment_methods
                        responsibles=$content.responsibles
                        }
            </div>
        </footer>

    {/block}


    {block name=footer}

    {/block}