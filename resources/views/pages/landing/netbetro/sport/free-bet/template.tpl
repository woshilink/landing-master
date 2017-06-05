{extends file="base/base.tpl"}
{block name=title} Netbet {$product|capitalize}{/block}
{block name=head}
  <link href="{$asset}/app.css" rel="stylesheet">
  <link href="src/css/remodal.css" rel="stylesheet">
  <link href="src/css/main.css" rel="stylesheet">
  <link href="src/css/remodal-default-theme.css" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
   <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries-->
   <!--if lt IE 9-->
   <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
   <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <style media="screen">
    .navbar {
      margin-bottom: 0;
    }
    .main-content{
      background-image: url('{$asset}/bg.jpg');
      background-position: bottom;
      background-size: cover;
      background-repeat: no-repeat;
      min-height: 700px;
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
<section id="main-nav">
  <nav class="navbar black-transparent">
    <div class="container">
      {include file="lab/organisms/nav/nav-main.tpl" text=$text}
    </div>
  </nav>
</section>


  {assign "lpconf" "{$smarty.current_dir}/lp.conf"}
  {config_load file=$lpconf}
<section class="main-content">
  <div class="container main-wrapper">
    <div class="row">
      <div class="col-xs-12 col-md-6 col-md-push-3">
        <div class="offer">
          <div class="offerCentre col-xs-12">
            <span class="line1"><span style="color: #ffffff; font-size: .4em; line-height: 1em;">PARIAZĂ ÎN SIGURANȚĂ</span></span>
            <span class="line2"><span style="color: #baff00;"><span style="font-family: Arial, sans-serif; display: inline;">1</span>500 RON</span></span>
            <a href="{$cta.sport}" style="text-decoration: none;">
              <div class="button" id="button">
                <button type="button" class="shiny-button btn center-block text-center cta btn-success btn-lg">
                  PARIAZĂ ACUM

                </button>
              </div>
            </a>
            <span class="bonus">COD BONUS:</span>
            <span class="code">NETBET<span style="font-family: Arial, sans-serif; display: inline;">1</span></span>
          </div>

        </div>



      </div>
    </div>
  </div>
</section>
<section class="steps-content">
  <div class="container">
    <div class="row">
      <div class="row">
        <div class="col-sm-12 col-md-4">
          <div class="step">
            <div class="number" style="font-family: Arial, sans-serif; font-weight: bold;">1</div>
            <h5>ÎNREGISTREAZĂ-TE</h5>
            <p>Pe NetBet acum</p>
          </div>
        </div>
        <div class="col-sm-12 col-md-4">
          <div class="step">
            <div class="number">2</div>
            <h5>DEPUNE</h5>
            <p>Foloseşte primul cod bonus din pachet: NETBET<span style="font-family: Arial, sans-serif;">1</span></p>
          </div>
        </div>
        <div class="col-sm-12 col-md-4">
          <div class="step">
            <div class="number">3</div>
            <h5>PARIAZĂ ACUM</h5>
            <p>Pariază suma depozitului o singură dată (x<span style="font-family: Arial, sans-serif;">1</span>) plasând pariuri eligibile</p>
          </div>
        </div>
      </div>

    </div>
  </div>
  <section id="tems">
    <div class="container">
      <div class="row terms">
        <div class="col-xs-11 ">
          <br>
          <p class="terms">
            *<a href="#modal">
              <span class="text-grey-light">Termeni și condiții</span>

            </a>
          </p>

          <br>

        </div>
      </div>
    </div>
  </section>
</section>
  <div class="container">
    <section id="footer" class="bg-darkgrey">
      <div class="container">
        {include file="lab/organisms/footer/footer-main.tpl"
        responsible_text_header = 'JOC RESPONSABIL'
        payment_text_header = 'METODE DE PLATĂ'
        }
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
{/block}

    {block name="footer"}

      <script src="src/js/remodal.min.js"></script>


    {/block}
