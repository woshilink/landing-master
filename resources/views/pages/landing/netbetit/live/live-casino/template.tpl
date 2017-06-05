{extends file="base/base.tpl"}
{block name=title}{$name} {$title}{/block}

{block name=head}
  <!-- Bootstrap -->
  <link href="{$asset}/app.css" rel="stylesheet">
  <link href="{url('/')}/src/css/main.css" rel="stylesheet">
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
      background-position: bottom;
      background-repeat: no-repeat;
    }
    .terms{
      display: none;
    }
  </style>
{/block}

{block name=body}
  <nav id="main-nav">
    <div class="container">
      {include file="lab/organisms/nav/nav-main.tpl"}
    </div>
  </nav>
  <a href="{$cta.live}">
    <section class="main-content hidden-xs">
      <div class="container">
        <div class="row">
          <div class="col-sm-6 pull-right">
            <div class="offer">
                <img src="{$asset}/offer.png" class="img-responsive center-block" />
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="mobile-content visible-xs">
      <div class="container-fluid">
        <div class="row">
          <div class="col-xs-12">
              <img src="{$asset}/mobile.jpg" class="img-responsive center-block" />
          </div>
        </div>
      </div>
    </section>
    <section class="steps">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
            <img src="{$asset}/steps.png" class="img-responsive center-block hidden-xs" />
            <img src="{$asset}/steps-mobile.png" class="img-responsive center-block visible-xs" />
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

						  	<a  href="https://casino.netbet.it/aiuto?hcalias=hc-termini-e-condizioni" target="blank">

	             			 	<span>* Si applicano i T&C</span>

						  </a>
					</p>
				</div>
			</div>
		</div>
	</section>
  <footer id="footer" >
    <div class="container-fluid wrapper-1170">
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
