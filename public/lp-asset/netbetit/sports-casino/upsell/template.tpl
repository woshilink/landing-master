{extends file="layout.tpl"}
{block name=title}{$name} {$title}{/block}
{block name=head}
  <link rel="icon" type="image/png" href="favicon.ico">
  <!-- Bootstrap -->
  <link href="sports-casino/src/css/bootstrap.min.css" rel="stylesheet">
  <link href="../template/templates/sport-casino/{$lp}/app.css" rel="stylesheet">
  <link href="footer.css" rel="stylesheet">
  <link href="sports-casino/src/css/remodal.css" rel="stylesheet">
  <link href="sports-casino/src/css/remodal-default-theme.css" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Oswald:400,700,300" rel="stylesheet" type="text/css">
  <link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">

  <link href="footer.css" rel="stylesheet">
   <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries-->
   <!--if lt IE 9-->
   <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
   <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

   <style media="screen">
     #logo{
       padding: 10px;
     }
     .sport .content{
       background-image: url('../template/templates/sport-casino/{$lp}/img/sport-desk.jpg');
     }
     .casino .content{
       background-image: url('../template/templates/sport-casino/{$lp}/img/casino-desk.jpg');
     }
     @media only screen and (max-width : 768px) {
       .sport .content, .casino .content{
         background-image:none;
         text-align: center;
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
  <section class="offer-sec">
    <div class="container-fluid text-center">
      <div class="row">
        <div class="col-xs-12 col-sm-12 ">
          <div class="sport">
            <div class="head text-center">
              <h2>Scommesse</h2>
            </div>
            <div class="content">
              <div class="row">
                <div class="col-xs-12 col-sm-3">
                  <h3>Rimborso prima scommessa fino a <strong>200&euro;</strong> <br></h3>
                  <a href="{$cta.sport}" class="btn btn-black color-gold margin-bottom--20">scommetti ora</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="row">
        <div class="col-xs-12 col-sm-12 ">
          <div class="casino">
            <div class="head">
                <h2>Casino</h2>
            </div>
            <div class="content">
              <div class="row">
                <div class="col-xs-12 col-sm-3">
                  <h3>Deposita e ottieni fino<br> a <strong>1000&euro;</strong><br> di bonus</h3>
                  <a href="{$cta.casino}" class="btn btn-black color-green margin-bottom--20">gioca ora</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      </div>
    </div>
   <!-- end of main container -->
   </section>
    <!-- end of main section -->
    <section class="upselling">
      <div class="container-fluid">
        <div class="row">
          <div class="col-xs-12 col-sm-6 col-md-3">
            <div class="panel panel-default">
              <div class="panel-heading text-center">promozioni</div>
              <img src="../template/templates/sport-casino/{$lp}/img/promo.jpg" alt="" class="img-responsive hidden-sm hidden-xs">
              <img src="../template/templates/sport-casino/{$lp}/img/promo-mobile.jpg" alt="" class="img-responsive visible-sm visible-xs">
              <div class="panel-body text-center">

                <p><strong>10&euro;</strong> gratis con il tuo documento</p>
                <a href="{$cta.casino}" class="btn btn-black color-green">Vedi promo</a>
              </div>
            </div>
          </div>

          <div class="col-xs-12 col-sm-6 col-md-3">
            <div class="panel panel-default">
              <div class="panel-heading text-center">live</div>
              <img src="../template/templates/sport-casino/{$lp}/img/live.jpg" alt="" class="img-responsive hidden-sm hidden-xs">
              <img src="../template/templates/sport-casino/{$lp}/img/live-mobile.jpg" alt="" class="img-responsive visible-sm visible-xs">
              <div class="panel-body text-center">

                <p>Scopri le quote LIVE</p>
                <br>
                <a href="{$cta.sport}" class="btn btn-black color-gold">SCOMMESSE LIVE</a>
              </div>
            </div>
          </div>

          <div class="col-xs-12 col-sm-6 col-md-3">
            <div class="panel panel-default">
              <div class="panel-heading text-center">Mobile</div>
              <img src="../template/templates/sport-casino/{$lp}/img/mobile.jpg" alt="" class="img-responsive hidden-sm hidden-xs">
              <img src="../template/templates/sport-casino/{$lp}/img/mobile-mobile.jpg" alt="" class="img-responsive visible-sm visible-xs">
              <div class="panel-body text-center">
                <p>Scommesse anche per il tuo mobile</p>
                <a href="{$cta.sport}" class="btn btn-black color-gold">Vai al mobile</a>
              </div>
            </div>
          </div>

          <div class="col-xs-12 col-sm-6 col-md-3">
            <div class="panel panel-default">
              <div class="panel-heading text-center">App Store</div>
              <img src="../template/templates/sport-casino/{$lp}/img/app.jpg" alt="" class="img-responsive hidden-sm hidden-xs">
              <img src="../template/templates/sport-casino/{$lp}/img/app-mobile.jpg" alt="" class="img-responsive visible-sm visible-xs">
              <div class="panel-body text-center">

                <p>Scopri come giocare dal tuo smartphone</p>
                <a href="{$cta.casino}" class="btn btn-black color-green">vai all'app store</a>
              </div>
            </div>
          </div>

        </div>
      </div>
    </section>

  {include file="footer_sport.tpl"}

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="sports-casino/src/js/remodal.min.js"></script>
  <script type="text/javascript">
    $(function(){
       $("#modal1Desc").load("terms.html");
     });
    $('#footer > div').removeClass('container-fluid');
    $('#footer > div').addClass('container');
  </script>
{/block}
