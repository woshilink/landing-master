{extends file="base/base.tpl"}
{block name=title}{$name} {$title}{/block}
{block name=head}

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
      background-position: center;
      background-size: cover;
      background-repeat: no-repeat;
      height: auto;
    }
    #steps{
          color: white;
    }

    @media only screen and (max-width: 1200px){
      .main-content {
            height: auto;
      }
      .offer {
          margin-top: 15%;
          margin-bottom: 15%;
      }
    }
    @media only screen and (max-width: 768px){
      .main-content{
        background-image: url('{$asset}/mobile.jpg');
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
  <section class="main-content">
    <div class="container main-wrapper">
      <div class="row">

        <div class="col-xs-12 col-sm-6 col-sm-offset-3">
          <div class="offer ">
            <img src="{$asset}/offer.png" alt="" class="img-responsive center-block ">
          </div>
        </div>
      </div>
    </div>
  </section>
  </a>

  <div class="container-fluid">
    <div class="row text-center">
      <span style="color: #ffffff;">New players only. £10+ deposit required, x30 wagering and T&amp;C apply.</span>
    </div>
  </div>
  <section id="steps">
    <div class="container-fluid">
      <a href="{$cta.casino}">
        <img src="{$asset}/steps.png" alt="" class="img-responsive center-block hidden-xs" />
        <img src="{$asset}/steps-mobile.png" alt="" class="img-responsive center-block visible-xs" />
      </a>

    </div>
  </section>
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
  <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
    <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
    <div>
      <p id="modal1Desc"></p>
    </div>
    <!-- loadind terms from terms from Jquery -->
    <br>
    <button data-remodal-action="confirm" class="remodal-confirm">OK</button>
  </div>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="src/js/remodal.min.js"></script>
  <script type="text/javascript">
    $(function(){
          $("#modal1Desc").load("{$asset}/terms.html");
    });
  </script>
  {literal}


  {/literal}
{/block}
