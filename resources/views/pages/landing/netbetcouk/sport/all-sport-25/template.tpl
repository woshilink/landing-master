{extends file="base/base.tpl"}
{block name=title}Netbet Sport{/block}
{block name=head}

    <link href="src/css/main.css" rel="stylesheet">

    <link href="{$asset}/app.css" rel="stylesheet">
    <link href="src/css/remodal.css" rel="stylesheet">
    <link href="src/css/remodal-default-theme.css" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Oswald:400,700,300" rel="stylesheet" type="text/css">

    <style media="screen">
        .main-content{
            background-image: url('{$asset}/bg.jpg');
            background-position: bottom;
            background-size: cover;
            background-repeat: no-repeat;
        }
    </style>
{/block}
{block name=body}
<nav>
    <div class="container">
      {include file="lab/organisms/nav/nav-main.tpl" text='NEW CUSTOMER OFFER'}
    </div>
  </nav>
<a href="{$cta.sport}">
    <section class="main-content hidden-xs">
        <div class="container main-wrapper">
            <div class="row">
                <div class="col-xs-6">
                    <div class="sports ">
                        <img src="{$asset}/sports.png" alt="" class="img-responsive center-block">
                    </div>
                </div>
                <div class="col-xs-6">
                    <div class="offer ">
                        <img src="{$asset}/offer.png" alt="" class="img-responsive center-block">
                    </div>

                    <!--<div class="button" id="button">
                      <button type="button" class="shiny-button btn center-block text-center cta btn-success btn-lg">
                        BET NOW
                      </button>
                    </div>-->

                </div>
            </div>
        </div>
    </section>
    <section class="mobile-content visible-xs">
        <div class="container-fluid">
            <div class="row">
                <img src="{$asset}/mobile.jpg" alt="" class="center-block img-responsive">
            </div>
        </div>
    </section>
    <div class="container-fluid">
        <div class="row text-center">
            <span style="color: #ffffff; text-decoration: none;">New Customers / Enter Code 25NETBET / Playthrough is x6 (Deposit &amp; Bonus) / T&amp;Cs apply</span>
        </div>
    </div>
    <section class="new-payment" style="background-color: #111">
        <div class="container">
            {include file="lab/organisms/extra/paypal-bitcoin.tpl"}
        </div>
    </section>
    <section class="steps-content">
        <div class="container">
            <div class="row">
                <img src="{$asset}/steps.png" alt="" class="hidden-xs center-block img-responsive">
                <img src="{$asset}/steps-mobile.jpg" alt=""class="visible-xs center-block img-responsive">
            </div>
        </div>
    </section>
</a>
<div class="container-fluid">

    <section id="terms">
        <div class="container">
            <div class="row terms">
                <div class="col-xs-11 hidden-xs">
                    <br>
                    <p class=" terms">
                        *<a href="#modal">
                            <span class="text-white">Terms &amp; Conditions</span>

                        </a>
                    </p>

                    <br>

                </div>
            </div>
        </div>
    </section>
    <footer id="footer">
        <div class="container">
            {include file="lab/organisms/footer/footer-main.tpl"
            responsible_text_header = 'RESPONSIBLE GAMING'
            payment_text_header = 'PAYMENT METHODS'

            }
        </div>
    </footer>


    <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
        <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
        <div>
            {include file="pages/landing/{$domain}/terms/{$product}/25NETBET/terms.tpl"}
        </div>
        <!-- loadind terms from terms from Jquery -->
        <br>
        <button data-remodal-action="confirm" class="remodal-confirm">OK</button>
    </div>

    {/block}

    {block name="footer"}
      <!-- end of modal pop up -->
    <script src="src/js/remodal.min.js"></script>


    {/block}