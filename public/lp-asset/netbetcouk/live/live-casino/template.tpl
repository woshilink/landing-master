{extends file="base/netbet-base.tpl"}
{block name=title}{$name} {$title}{/block}
{block name=head}
  <link rel="icon" type="image/png" href="favicon.ico">
  <!-- Bootstrap -->
  <link href="footer.css" rel="stylesheet">
  <link href="realtime/src/css/bootstrap.min.css" rel="stylesheet">
  <link href="../template/templates/live/{$lp}/app.css" rel="stylesheet">
  <link href="realtime/src/css/remodal.css" rel="stylesheet">
  <link href="realtime/src/css/remodal-default-theme.css" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Oswald:400,700,300" rel="stylesheet" type="text/css">
  <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries-->
  <!--if lt IE 9-->
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <style media="screen">
    .main-content{
      background-image: url('../template/templates/live/{$lp}/bg.jpg');
      background-position: bottom;
      background-repeat: no-repeat;
    }
    .terms{
      display: none;
    }
  </style>
{/block}
{block name=body}
  {include file="gamma.tpl" }
  <nav>
    <div class="container">
      {include file="lab/organisms/nav/nav-main.tpl" text='NEW CUSTOMER OFFER'}
    </div>
  </nav>
  <a href="{$url}">
    <section class="main-content hidden-xs">
      <div class="container">
        <div class="row">
          <div class="col-sm-6 pull-right">
            <div class="offer">

                <img src="../template/templates/live/{$lp}/offer.png" class="img-responsive center-block" />

            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="mobile-content visible-xs">
      <div class="container-fluid">
        <div class="row">
          <div class="col-xs-12">

              <img src="../template/templates/live/{$lp}/mobile.jpg" class="img-responsive center-block" />

          </div>
        </div>
      </div>
    </section>
    <section class="steps">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">

            <img src="../template/templates/live/{$lp}/steps.png" class="img-responsive center-block hidden-xs" />
            <img src="../template/templates/live/{$lp}/steps-mobile.png" class="img-responsive center-block visible-xs" />

        </div>
      </div>
    </div>
    </section>
  </a>
  <section class="terms-link">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-12 col-sm-3">
					<p class="text-center">

						  	<a  href="https://help.netbet.com/casino/conditions" target="blank">

	             			 	<span>* Terms &amp; Conditions</span>

						  </a>
					</p>
				</div>
			</div>
		</div>
	</section>

      {include file="footer_casino.tpl"}

{/block}
