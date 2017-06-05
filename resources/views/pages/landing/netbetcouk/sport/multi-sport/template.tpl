{extends file="base/base.tpl"}
{block name=title}Netbet Sport{/block}
{block name=head}

  <link href="src/css/main.css" rel="stylesheet">
  <link href="{$asset}/app.css" rel="stylesheet">
  <link href="src/css/remodal.css" rel="stylesheet">
  <link href="src/css/remodal-default-theme.css" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Oswald:400,700,300" rel="stylesheet" type="text/css">
  <link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">

  <style media="screen">
    .main-content{
      background-image: url('{$asset}/bg.jpg');
      background-position: top;
      background-repeat: no-repeat;
    }
  </style>

{/block}
{block name=body}
{assign "lpconf" "{$smarty.current_dir}/lp.conf"}
{config_load file=$lpconf}
  <nav>
    <div class="container">
      {include file="lab/organisms/nav/nav-main.tpl" text='NEW CUSTOMER OFFER'}
    </div>
  </nav>
  <a href="{$cta.sport}">
  <section class="main-content hidden-xs">
    <div class="container">
      <div class="row">

        <div class="col-xs-12">
          <div class="offer text-center">

            <div class="row">

              <div class="col-xs-12 col-sm-12 col-md-8">
                <h1>{#offer_text#}</h1>
              </div>

              <div class="col-xs-12 col-sm-12 col-md-4">
                <button class="btn btn-black" type="button" name="button">
                  <span>{#cta#}</span>
                </button>
              </div>

            </div>
            {* <img src="{$asset}/offer.png" alt="offer" class="center-block img-responsive" /> *}
          </div>

        </div>
      </div>
    </div>

  </section>
  <section class="mobile-content visible-xs">
    <div class="container-fluid main-wrapper">
      <div class="row">
        <img src="{$asset}/mobile.jpg" alt="" class="center-block img-responsive">
      </div>
    </div>
  </section>
    <section class="steps-content">
      <div class="container-fluid main-wrapper">

        <div class="row">
          <div class="col-xs-12 col-sm-offset-3 col-sm-7 col-md-offset-0 col-md-4">
            <div class="step">
              <div class="number">1</div>
              <h5>CREATE YOUR</h5>
              <p>ACCOUNT</p>
            </div>
          </div>
          <div class="col-xs-12 col-sm-offset-3 col-sm-7 col-md-offset-0 col-md-4">
            <div class="step">
              <div class="number">2</div>
              <h5>PLCE YOUR</h5>
              <p>BET</p>
            </div>
          </div>
          <div class="col-xs-12 col-sm-offset-3 col-sm-7 col-md-offset-0 col-md-4">
            <div class="step">
              <div class="number">3</div>
              <h5>BET AND GET</h5>
              <p>YOUR BONUS</p>
            </div>
          </div>
        </div>
      </div>
    </section>
  </a>
  <section id="terms">
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
  <footer id="footer">
    <div class="container-fluid">
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

{literal}
  <script type="text/javascript">
    $(function(){
      $("#modal1Desc").load("terms.html");
    });
    $('footer > div').addClass('main-wrapper');
  </script>

{/literal}
{/block}
