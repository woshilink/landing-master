{extends file="base/base.tpl"}
{block name=title}{$name} {$title}{/block}
{block name=head}
  <link rel="icon" type="image/png" href="favicon.ico">
  <!-- Bootstrap -->
  <link href="src/css/main.css" rel="stylesheet">
  <link href="src/css/bootstrap.min.css" rel="stylesheet">
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
      background-position: bottom;
      background-repeat: no-repeat;
    }
    {if $lang == 'fr'}
        .offer{
            margin-top: 70px;
        }
    {/if}
    .terms{
      display: none;
    }
  </style>
{/block}

{assign "lpconf" "{$smarty.current_dir}/{$lang}/lp.conf"}
{config_load file=$lpconf}

{block name=body}
  <section id="main-nav">
    <nav class="navbar bg-black navbar-fixed-top">
      <div class="container">
        {include file="lab/organisms/nav/nav-main.tpl" text=#text#}
      </div>
    </nav>
  </section>
  <a href="{$cta.live}">
    <section class="main-content hidden-xs">
      <div class="container">
        <div class="row">
          <div class="col-sm-6 pull-right">
            <div class="offer">

                <img src="{$asset}/{$lang}/offer.png" class="img-responsive center-block" />

            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="mobile-content visible-xs">
      <div class="container-fluid">
        <div class="row">
          <div class="col-xs-12">

              <img src="{$asset}/{$lang}/mobile.jpg" class="img-responsive center-block" />

          </div>
        </div>
      </div>
    </section>
    <section class="steps">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">

            <img src="{$asset}/{$lang}/steps.png" class="img-responsive center-block hidden-xs" />
            <img src="{$asset}/{$lang}/steps-mobile.png" class="img-responsive center-block visible-xs" />

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

						  	<a  href="https://help.netbet.com/{$lang}/casino/conditions" target="blank">
                  {if $countryCode == 'CHE'}
                        {if $lang == 'fr'}
                          <span>* Conditions Générales</span>
                        {else}
                           <span>* Teilnahmebedingungen</span>
                        {/if}
                  {else}
	             			 {if $lang == 'de'}
	             			 	<span>* Teilnahmebedingungen</span>
	             			 {elseif $lang == 'ro'}
	             			 	<span>* Termeni și condiții</span>
	             			 {elseif $lang == 'nl'}
	             			 	<span>* Algemene voorwaarden</span>
                      {elseif $lang == 'ru'}
                       <span>* Условия и Положения</span>
	             			 {elseif $lang == 'fr'}
	             			 	<span>* Conditions Générales</span>
	             			  {elseif $lang == 'el'}
	             			 	<span>* Όροι και Συνθήκες</span>
	             			 {else}
	             			 	<span>* Terms &amp; Conditions</span>
	             			 {/if}
                  {/if}
						  </a>
					</p>
				</div>
			</div>
		</div>
	</section>
  <section id="footer" class="bg-darkgrey">
    <div class="container-fluid">
      {include file="lab/organisms/footer/footer-main.tpl"
      responsible_text_header = #responsible_text_header#
      payment_text_header = #payment_text_header#
      payment_methods = $content.payment_methods
      responsibles = $content.responsibles
      }
    </div>
  </section>


{/block}
