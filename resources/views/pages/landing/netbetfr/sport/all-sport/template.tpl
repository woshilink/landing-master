{extends file="base/base.tpl"}
{block name=title}{$name} {$title}{/block}
{block name=head}
  <link href="{$asset}/app.css" rel="stylesheet">
  <link href="src/css/remodal.css" rel="stylesheet">
  <link href="src/css/main.css" rel="stylesheet">
  <link href="src/css/remodal-default-theme.css" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Oswald:400,700,300" rel="stylesheet" type="text/css">

  <style media="screen">
    .main-content{
      background-image: url('{$asset}/bg.jpg');
      background-position: bottom;
      background-size: cover;
      background-repeat: no-repeat;
    }
  </style>
{/block}


{block name=body}
<div class="container text-center">
  {$legal_text}
</div>
  <nav class="navbar">
    <div class="container">
      {include file="lab/organisms/nav/nav-main.tpl"}
    </div>
  </nav>
<!-- end of NAV -->
<a href="{$cta.sport}">
  <section class="main-content hidden-xs">
    <div class="container main-wrapper">
      <div class="row">
        <div class="col-xs-6">
          <div class="sports ">
            <img src="{$asset}/sports.png" alt="" class="img-responsive center-block">
          </div>
        </div>
        <div class="col-xs-6">
          <div class="offer ">
            <img src="{$asset}/offer.png" alt="" class="img-responsive center-block">
          </div>

          <div class="button" id="button">
            <button type="button" class="shiny-button btn center-block text-center cta btn-success btn-lg">
              INSCRIVEZ-VOUS
            </button>
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class="mobile-content visible-xs">
    <div class="container-fluid">
      <div class="row">
        <img src="{$asset}/mobile.jpg" alt="" class="center-block img-responsive">
      </div>
    </div>
  </section>
  <section class="steps-content">
    <div class="container">
      <div class="row">
        <img src="{$asset}/steps.png" alt="" class="hidden-xs center-block img-responsive">
        <img src="{$asset}/steps-mobile.jpg" alt="" class="visible-xs center-block img-responsive">
      </div>
    </div>
  </section>
  </a>
  <div class="col-md-12 ">
						<center>
							<p id="terms_mobile" class=" text-center">
								<br>
								<a href="#modal" rel="nofollow" style="font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-size: 12px; color:#8F8F8F;">*
                                  <span style="text-decoration: underline;">Conditions sur NetBet.fr</span></a>
								<br>
							</p>
						</center>
						<br>
	</div>
  <footer id="footer" class="blue-footer">
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
      {include file="pages/landing/{$domain}/terms/welcome-offer/terms.tpl"}
    </div>
    <!-- loadind terms from terms from Jquery -->
    <br>
    <button data-remodal-action="confirm" class="remodal-confirm">OK</button>
  </div>
  <!-- end of modal pop up -->



{/block}

{block name="footer"}
  <script src="src/js/remodal.min.js"></script>
    <script>
        $('.promo').remove('.promo');
        $('.logo').remove('.logo');
    </script>
{/block}