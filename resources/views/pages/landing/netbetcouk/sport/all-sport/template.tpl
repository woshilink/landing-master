{extends file="base/base.tpl"}
{block name=title}{$name} {$title}{/block}
{block name=head}
  <link rel="icon" type="image/png" href="favicon.ico">
  <!-- Bootstrap -->
  <link href="src/css/bootstrap.min.css" rel="stylesheet">
  <link href="src/css/main.css" rel="stylesheet">

  <link href="{$asset}/app.css" rel="stylesheet">
  <link href="src/css/remodal.css" rel="stylesheet">
  <link href="src/css/remodal-default-theme.css" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Oswald:400,700,300" rel="stylesheet" type="text/css">
   <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries-->
   <!--if lt IE 9-->
   <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
   <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <style media="screen">
    .main-content{
      background-image: url('{$asset}/bg.jpg');
      background-position: bottom;
      background-size: cover;
      background-repeat: no-repeat;
    }
    .middlePayment .leftPayment, .middlePayment .rightPayment {
      display: inline;
    }
    .middlePaypal, .middlePayment {
      width: 100%;
      text-align: center;
      padding: 5px 0;
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

          <div class="button" id="button">
            <button type="button" class="shiny-button btn center-block text-center cta btn-success btn-lg">
              BET NOW
            </button>
          </div>

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
      <span style="color: #ffffff;">New Customers / Enter Code WELCOME50 / Playthrough is x6 (Deposit &amp; Bonus) / T&amp;Cs apply</span>
    </div>
  </div>
  <section class="new-payment bg-grey-light">
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
  <section class="tc">
    <div class="container">
      <div class="row terms">
        <div class="col-xs-11 ">
          <br>
          <p class="pull-left  terms">
            *<a href="#modal">
              <span class="text-white">Terms &amp; Conditions</span>
            </a>
          </p>
          <br>
        </div>
      </div>
    </div>
  </section>
  <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
    <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
    <div>
      {include file="pages/landing/{$domain}/terms/{$product}/welcome-offer/terms.tpl"}
    </div>
    <!-- loadind terms from terms from Jquery -->
    <br>
    <button data-remodal-action="confirm" class="remodal-confirm">OK</button>
  </div>
    <footer id="footer">
      <div class="container">
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
    <script src="src/js/remodal.min.js"></script>

{/block}