{extends file="layout.tpl"}
{block name=title}{$name} {$title}{/block}
{block name=head}
  <link rel="icon" type="image/png" href="favicon.ico">
  <!-- Bootstrap -->
  <link href="landing/enhancement/src/css/bootstrap.min.css" rel="stylesheet">
  <link href="footer.css" rel="stylesheet">

  <link href="../template/templates/sport/{$lp}/app.css" rel="stylesheet">
  <link href="landing/enhancement/src/css/remodal.css" rel="stylesheet">
  <link href="landing/enhancement/src/css/remodal-default-theme.css" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Oswald:400,700,300" rel="stylesheet" type="text/css">
   <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries-->
   <!--if lt IE 9-->
   <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
   <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <script>document.createElement( "picture" );</script>
  <script src="landing/enhancement/src/js/picturefill.min.js" async></script>
  <style media="screen">
    .main-content{
      background-image: url('../template/templates/sport/{$lp}/bg.jpg');
      background-position: bottom;
      background-size: cover;
      background-repeat: no-repeat;
    }
  </style>
{/block}
{block name=body}
  <nav>
    <div class="container">
      {include file="partial/nav/_nav.tpl"}
    </div>
  </nav>
  <a href="{$url}">
  <section class="main-content hidden-xs">
    <div class="container main-wrapper">
      <div class="row">
        <div class="col-xs-6">
          <div class="sports ">
            <img src="../template/templates/sport/{$lp}/sports.png" alt="" class="img-responsive center-block">
          </div>
        </div>
        <div class="col-xs-6">
          <div class="offer ">
            <img src="../template/templates/sport/{$lp}/offer.png" alt="" class="img-responsive center-block">
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
        <img src="../template/templates/sport/{$lp}/mobile.jpg" alt="" class="center-block img-responsive">
      </div>
    </div>
  </section>
  <div class="container-fluid">
    <div class="row text-center">
      <span style="color: #ffffff;">New Customers / Enter Code WELCOME50 / Playthrough is x6 (Deposit &amp; Bonus) / T&amp;Cs apply</span>
    </div>
  </div>
  {include file="partial/offer/_paypal.tpl"}
  <section class="steps-content">
    <div class="container">
      <div class="row">
        <img src="../template/templates/sport/{$lp}/steps.png" alt="" class="hidden-xs center-block img-responsive">
        <img src="../template/templates/sport/{$lp}/steps-mobile.jpg" alt=""class="visible-xs center-block img-responsive">
      </div>
    </div>
  </section>
  </a>
  <div class="container-fluid">

  {include file="footer_sport.tpl"}

  {include file="partial/modal/_remodal.tpl"}
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="landing/enhancement/src/js/jquery.countdown.min.js"></script>
  <script src="landing/enhancement/src/js/remodal.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.19.0/TweenMax.min.js"></script>

  {literal}
  <script type="text/javascript">
  var pauseBtn = document.getElementById("button"),
  tl = new TimelineMax();

    tl.staggerTo(".circle", 1.5, {x:640, repeat:-1, repeatDelay:0.5, force3D:true, ease:SlowMo.ease.config(0.2, 0.4)}, 0.15)

    pauseBtn.onclick = function() {
    tl.paused(!tl.paused());

    }


    $(function(){
          $("#modal1Desc").load("terms.html");
    });
    $('footer div').removeClass('container-fluid');
    $('footer div').addClass('container');
  </script>

  {/literal}
{/block}
