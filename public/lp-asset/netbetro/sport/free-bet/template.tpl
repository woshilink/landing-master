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
  <link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
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
      min-height: 700px;
    }
    @media only screen and (max-width: 769px) {
      .main-content {
        min-height: 400px;
      }
    }
    @media only screen and (max-width: 567px) {
      .main-content {
        background-image: url('../template/templates/sport/{$lp}/mobile.jpg');
        min-height: 616px;
      }
    }
  </style>
{/block}
{block name=body}
  <nav>
    <div class="container">
        {include file="partial/nav/_nav.tpl"}
    </div>
  </nav>


  {assign "lpconf" "{$smarty.current_dir}/lp.conf"}
  {config_load file=$lpconf}
  <section class="main-content">
    <div class="container main-wrapper">
      <div class="row">
        <div class="col-xs-12 col-md-6 col-md-push-3">
          <div class="offer">
              {include file="partial/offer/_offerCentre.tpl"}
          </div>



        </div>
      </div>
    </div>
  </section>
  <section class="steps-content">
    <div class="container">
      <div class="row">
            {include file="partial/steps/_steps-conf-alt.tpl"}
      </div>
    </div>
  </section>
  <div class="container-fluid">
    {include file="footer_sport.tpl"}

  {include file="partial/modal/_remodal.tpl"}
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="landing/enhancement/src/js/jquery.countdown.min.js"></script>
  <script src="landing/enhancement/src/js/remodal.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.19.0/TweenMax.min.js"></script>

  <script type="text/javascript">
    $("#modal1Desc").load("../template/templates/sport/{$lp}/terms.html");
    $('footer div').removeClass('container-fluid');
    $('footer div').addClass('container');
  </script>

{/block}
