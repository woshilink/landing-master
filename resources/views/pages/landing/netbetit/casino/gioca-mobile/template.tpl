{extends file="base/base.tpl"}
{block name=title}Netbet {$product}{/block}
{block name=head}

  <link href="{$asset}/app.css" rel="stylesheet">
  <link href="src/css/main.css" rel="stylesheet">
  <link href="src/css/remodal.css" rel="stylesheet">
  <link href="src/css/remodal-default-theme.css" rel="stylesheet">
  <link href='//fonts.googleapis.com/css?family=Oswald:700' rel='stylesheet' type='text/css'>

  <style media="screen">
    #logo{
      padding: 10px;
    }
    #main{
      background-image: url('{$asset}/bg.jpg');
      position: relative;
      width: 100%;
      text-align: center;
      color: #fff;
      z-index: -1;
      background-position:center;
      -webkit-background-size: cover;
      -moz-background-size: cover;
      background-size: cover;
    }

    #mobile .container .col-xs-12{
      padding: 0;
    }

    .step p {
      color: #FFF3F3;
    }

    .spiner{
      margin-top: -300px;
    }
    @media only screen and (min-width : 1601px) {
      .spiner{
        margin-top: -335px;
      }
    }
    @media only screen and (max-width : 1200px) {
      .spiner{
        margin-top: -245px;
      }
    }
    @media only screen and (max-width : 992px) {
      .spiner{
        margin-top: 0;
      }
    }
    @media only screen and (max-width : 767px) {
      .heroContainer{
        background-color: black;
      }
    }
  </style>
{/block}

{block name=body}
  <nav class="navbar ">
    <div class="container">
      {include file="lab/organisms/nav/nav-main.tpl" text=$text}
    </div>
  </nav>

  <a href="{$cta.casino}">
  <section id="main" class="hidden-xs">
    <div class="container-fluid wrapper">
      <div class="row">
          <div class="col-xs-12  col-sm-6 pull-right">
            <div class="offer text-center">
              <h2><strong>10&euro;</strong> GRATIS</h2>
              <h2><strong>1000&euro;</strong> PRIMA RICARICA</h2>
              <h2><strong>+25</strong> FREE SPINS</h2>
            </div>
            <div class="button">
              <div  class="CTA-button center-block">REGISTRATI ORA</div>
            </div>
          </div>
          <div class="col-xs-12 col-sm-6 ">
              <div class="slot">
                <img src="{$asset}/pic.png" alt="Slot" class="img-responsive center-block "/>
              </div>
          </div>
      </div>
    </div>
  </section>
  <section id="mobile" class="visible-xs">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">

          <img src="{$asset}/mobile.jpg" alt="OFFER" class="img-responsive center-block"/>

        </div>
      </div>
    </div>
  </section>
  <section id="steps">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <img src="{$asset}/steps.png" alt="Steps" class="img-responsive hidden-xs center-block"/>
          <img src="{$asset}/steps-mobile.jpg" alt="Steps" class="img-responsive visible-xs"/>
        </div>
      </div>
    </div>
  </section>
  </a>
  <section class="terms-new">
    <div class="container">
      <div class="row" style="margin-bottom: 16px;">
          <a href="#modal" class="terms" style="text-align: center; color: #999999;">* Termini e Condizioni</a>
      </div>
    </div>
  </section>
  <section id="footer" class="bg-darkgrey">
    <div class="container">
      {include file="lab/organisms/footer/footer-main.tpl"}
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
  <!-- end of modal pop up -->


{/block}

{block name="footer"}

  <script src="src/js/remodal.min.js"></script>

{/block}"
