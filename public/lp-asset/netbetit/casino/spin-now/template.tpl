{extends file="layout.tpl"}
{block name=title}{$name} {$title}{/block}
{block name=head}
  <link rel="icon" type="image/png" href="favicon.ico">
  <!-- Bootstrap -->
  <link href="10gratis/src/css/bootstrap.min.css" rel="stylesheet">
  <link href="../template/templates/casino/{$lp}/app.css" rel="stylesheet">
  <link href="footer.css" rel="stylesheet">
  <link href="10gratis/src/css/remodal.css" rel="stylesheet">
  <link href="10gratis/src/css/remodal-default-theme.css" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Oswald:400,700,300" rel="stylesheet" type="text/css">

  <link href="footer.css" rel="stylesheet">
   <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries-->
   <!--if lt IE 9-->
   <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
   <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

  <style media="screen">
    #logo{
      padding: 10px;
    }
    #main{
      background-image: url('../template/templates/casino/{$lp}/bg.jpg');
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
{$gtm}
<nav>
  <div class="container">
    {include file="partial/nav/_nav.tpl"}
  </div>
</nav>
  <a href="{$url}">
  <section id="main" class="hidden-xs">
    <div class="container">
      <div class="row">

          <div class="col-xs-12  col-sm-6 pull-right">
            <div class="offer">
              <img src="../template/templates/casino/{$lp}/offer.gif" alt="OFFER" class="img-responsive center-block"/>
            </div>
          </div>
          <div class="col-xs-12 col-sm-6 ">
              <div class="slot">
                <img src="../template/templates/casino/{$lp}/pic.png" alt="Slot" class="img-responsive center-block hidden-sm"/>
                <img src="../template/templates/casino/{$lp}/Slot.gif" alt="Slot" class="img-responsive center-block spiner"/>
              </div>
          </div>

      </div>

    </div>
  </section>
  <section id="mobile" class="visible-xs">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <img src="../template/templates/casino/{$lp}/mobile.jpg" alt="OFFER" class="img-responsive"/>
        </div>
      </div>
    </div>
  </section>
  <section id="steps">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <img src="../template/templates/casino/{$lp}/steps.jpg" alt="Steps" class="img-responsive hidden-xs center-block"/>
          <img src="../template/templates/casino/{$lp}/steps-mobile.jpg" alt="Steps" class="img-responsive visible-xs"/>
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
  {include file="footer_casino.tpl"}
  {include file="partial/modal/_remodal.tpl"}
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="10gratis/src/js/remodal.min.js"></script>
  <script type="text/javascript">


    $(function(){
       $("#modal1Desc").load("terms.html");
     });
    $('#footer > div').removeClass('container-fluid');
    $('#footer > div').addClass('container');
  </script>
{/block}
