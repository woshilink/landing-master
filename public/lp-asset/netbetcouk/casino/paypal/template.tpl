{extends file="layout.tpl"}
{block name=title}{$name} {$title}{/block}
{block name=head}
  <link rel="icon" type="image/png" href="favicon.ico">
  <!-- Bootstrap -->
  <link href="3-cards/src/css/bootstrap.min.css" rel="stylesheet">
  <link href="footer.css" rel="stylesheet">

  <link href="../template/templates/casino/{$lp}/app.css" rel="stylesheet">
  <link href="3-cards/src/css/remodal.css" rel="stylesheet">
  <link href="3-cards/src/css/remodal-default-theme.css" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Oswald:400,700,300" rel="stylesheet" type="text/css">
   <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries-->
   <!--if lt IE 9-->
   <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
   <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

  <style media="screen">
    .main-content{
      background-image: url('../template/templates/casino/{$lp}/bg.jpg');
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
        background-image: url('../template/templates/casino/{$lp}/mobile.jpg');
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
  <a href="{$url}">
  <section class="main-content">
    <div class="container main-wrapper">
      <div class="row">

        <div class="col-xs-12 col-sm-6 col-sm-offset-3">
          <div class="offer ">
            <img src="../template/templates/casino/{$lp}/offer.png" alt="" class="img-responsive center-block ">
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
      <a href="{$url}">
        <img src="../template/templates/casino/{$lp}/steps.png" alt="" class="img-responsive center-block hidden-xs" />
        <img src="../template/templates/casino/{$lp}/steps-mobile.png" alt="" class="img-responsive center-block visible-xs" />
      </a>
      {include file="footer_casino.tpl"}
    </div>
  </section>

  {include file="partial/modal/_remodal.tpl"}
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="3-cards/src/js/remodal.min.js"></script>
  <script type="text/javascript">
    $(function(){
          $("#modal1Desc").load("../template/templates/casino/{$lp}/terms.html");
    });
  </script>
  {literal}
  <script type="text/javascript">

    $('footer div:first-child').removeClass('container-fluid');
    $('footer div:first-child').addClass('container');
  </script>

  {/literal}
{/block}
