{extends file="base/base.tpl"}
{block name=title}Netbet Sport{/block}
{block name=head}

  <link href="src/css/main.css" rel="stylesheet">

  <link href="{$asset}/app.css" rel="stylesheet">
  <link href="src/css/remodal.css" rel="stylesheet">
  <link href="src/css/remodal-default-theme.css" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">

  <style media="screen">
    .main-content{
      background-image: url('{$asset}/bg.jpg');
      background-position: bottom;
      background-size: cover;
      background-repeat: no-repeat;
      min-height: 700px;
    }
    .navbar {
      margin-bottom: 0;
    }
    .custom-text{
      color: white;
    }
    @media only screen and (max-width: 769px) {
      .main-content {
        min-height: 400px;
      }
    }
    @media only screen and (max-width: 567px) {
      .main-content {
        background-image: url('{$asset}/mobile.jpg');
        min-height: 616px;
      }
    }
  </style>
{/block}
{block name=body}

    <nav class="navbar black-transparent">
      <div class="container">
        {include file="lab/organisms/nav/nav-main.tpl" text='New Customer Welcome Offer'}
      </div>
    </nav>



  {assign "lpconf" "{$smarty.current_dir}/lp.conf"}
  {config_load file=$lpconf}
  <section class="main-content">
    <div class="container main-wrapper">
      <div class="row">
        <div class="col-xs-12 col-md-6 col-md-push-3">
          <div class="offer">
            <div class="offerCentre col-xs-12">
              <span class="line1">£50</span>
              <span class="line2">FREE BET</span>
              <a href="https://banners.livepartners.com/click.php?p=126&amp;l=en-GB&amp;id=&amp;lp=free-bet&amp;bid2land=1&amp;t=register" style="text-decoration: none;">
                <div class="button" id="button">
                  <button type="button" class="shiny-button btn center-block text-center cta btn-success btn-lg">
                    BET NOW

                  </button>
                </div>
              </a>
              <span class="bonus">BONUS CODE:</span>
              <span class="code">WELCOME50</span>
            </div>
          </div>



        </div>
      </div>
    </div>
  </section>
  <div class="container-fluid">
    <div class="row text-center">
      <span style="color: #ffffff;">New Customers / Enter Code WELCOME50 / Playthrough is x6 (Deposit &amp; Bonus) / T&amp;Cs apply</span>
    </div>
  </div>
<section class="new-payment ">
  <div class="container">
    {include file="lab/organisms/extra/paypal-bitcoin.tpl"}
  </div>
</section>
<section class="steps-content">
  <div class="container">
    <div class="row">
      <div class="row">
        <div class="col-sm-12 col-md-4">
          <div class="step">
            <div class="number">1</div>
            <h5>JOIN</h5>
            <p>Register your new account using Promo code WELCOME50</p>
          </div>
        </div>
        <div class="col-sm-12 col-md-4">
          <div class="step">
            <div class="number">2</div>
            <h5>DEPOSIT</h5>
            <p>Make a deposit and bet on any qualifying market</p>
          </div>
        </div>
        <div class="col-sm-12 col-md-4">
          <div class="step">
            <div class="number">3</div>
            <h5>BONUS</h5>
            <p>Rollover your deposit once to receive the bonus</p>
          </div>
        </div>
      </div>

    </div>
  </div>
</section>
<section id="terms">
  <div class="container">
    <div class="row">
      <div class="col-xs-11 ">
        <br>
        <p class="terms">
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
        {include file="pages/landing/{$domain}/terms/{$product}/welcome-offer/terms.tpl"}
      </div>
      <!-- loadind terms from terms from Jquery -->
      <br>
      <button data-remodal-action="confirm" class="remodal-confirm">OK</button>
    </div>
    <!-- end of modal pop up -->

{/block}
    {block name="footer"}

      <script src="src/js/remodal.min.js"></script>


      <script type="text/javascript">
        $("#modal1Desc").load("{$asset}/terms.html");
        $('footer div').removeClass('container-fluid');
      </script>
    {/block}
