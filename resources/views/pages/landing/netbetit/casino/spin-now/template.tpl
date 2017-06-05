{extends file="base/base.tpl"}
{block name=title}{$name} {$title}{/block}
{block name=head}
  <link href="{$asset}/app.css" rel="stylesheet">
  <link href="src/css/main.css" rel="stylesheet">
  <link href="src/css/remodal.css" rel="stylesheet">
  <link href="src/css/remodal-default-theme.css" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Oswald:400,700,300" rel="stylesheet" type="text/css">

   <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries-->
   <!--if lt IE 9-->
   <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
   <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

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

    #main .button{
      margin-top: 4%;
    }
    #mobile .container .col-xs-12{
      padding: 0;
    }

    .step p {
      color: #FFF3F3;
    }
    .container-fluid{
      padding-left: 0;
      padding-right: 0;
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
  <nav>
    <div class="container">
      {include file="lab/organisms/nav/nav-main.tpl" text='NEW CUSTOMER OFFER'}
    </div>
  </nav>
  <a href="{$cta.casino}">
  <section id="main" class="hidden-xs">
    <div class="container">
      <div class="row">

          <div class="col-xs-12  col-sm-6 pull-right">
            <div class="offer">
              <img src="{$asset}/offer.gif" alt="OFFER" class="img-responsive center-block"/>
            </div>
          </div>
          <div class="col-xs-12 col-sm-6 ">
              <div class="slot">
                <img src="{$asset}/pic.png" alt="Slot" class="img-responsive center-block hidden-sm"/>
                <img src="{$asset}/Slot.gif" alt="Slot" class="img-responsive center-block spiner"/>
              </div>
          </div>

      </div>

    </div>
  </section>
  <section id="mobile" class="visible-xs">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <img src="{$asset}/mobile.jpg" alt="OFFER" class="img-responsive"/>
        </div>
      </div>
    </div>
  </section>
  <section id="steps">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <img src="{$asset}/steps.jpg" alt="Steps" class="img-responsive hidden-xs center-block"/>
          <img src="{$asset}/steps-mobile.jpg" alt="Steps" class="img-responsive visible-xs"/>
        </div>
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
              <span class="text-white">* Termini e Condizioni</span>
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
      {include file="pages/landing/netbetit/terms/casino/welcome-offer/terms.tpl"}
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
  <script type="text/javascript">


  </script>
{/block}
