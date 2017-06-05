{extends file="layout.tpl"}
{block name=title}{$name} {$title}{/block}
{block name=head}
  <link rel="icon" type="image/png" href="favicon.ico">
  <!-- Bootstrap -->
  <link href="footer.css" rel="stylesheet">
  <link href="landing/live-dealer/src/css/bootstrap.min.css" rel="stylesheet">
  <link href="../template/templates/live/{$lp}/app.css" rel="stylesheet">
  <link href="landing/live-dealer/src/css/animate.css" rel="stylesheet">
  <link href="landing/live-dealer/src/css/remodal.css" rel="stylesheet">
  <link href="landing/live-dealer/src/css/remodal-default-theme.css" rel="stylesheet">
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
  <nav class="navbar">
    <div class="container-fluid">
        {* $countryCode == 'CHE' *}

        {if $countryCode == 'CHE'}
        {include file="partial/nav/nav-ch-de.tpl"}
        {else}

        {include file="partial/nav/_nav.tpl"}
      {/if}
    </div>
  </nav>
  <a href="{$url}">
    <section class="main-content hidden-xs">
      <div class="container">
        <div class="row">
          <div class="col-sm-6 pull-right">
            <div class="offer">
              {if $countryCode == 'CHE'}
                {if $lang == 'fr'}
                  <img src="../template/templates/live/{$lp}/fr/offer.png" class="img-responsive center-block" />
                {else}
                    <img src="../template/templates/live/{$lp}/de/offer.png" class="img-responsive center-block" />
                {/if}
              {else}
                <img src="../template/templates/live/{$lp}/{$lang}/offer.png" class="img-responsive center-block" />
              {/if}
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="mobile-content visible-xs">
      <div class="container-fluid">
        <div class="row">
          <div class="col-xs-12">
            {if $countryCode == 'CHE'}
                  {if $lang == 'fr'}
                    <img src="../template/templates/live/{$lp}/fr/mobile.jpg" class="img-responsive center-block" />
                  {else}
                     <img src="../template/templates/live/{$lp}/de/mobile.jpg" class="img-responsive center-block" />
                  {/if}
            {else}
              <img src="../template/templates/live/{$lp}/{$lang}/mobile.jpg" class="img-responsive center-block" />
            {/if}
          </div>
        </div>
      </div>
    </section>
    <section class="steps">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          {if $countryCode == 'CHE'}
            {if $lang == 'fr'}
              <img src="../template/templates/live/{$lp}/fr/steps.png" class="img-responsive center-block hidden-xs" />
              <img src="../template/templates/live/{$lp}/fr/steps-mobile.png" class="img-responsive center-block visible-xs" />
            {else}
              <img src="../template/templates/live/{$lp}/de/steps.png" class="img-responsive center-block hidden-xs" />
              <img src="../template/templates/live/{$lp}/de/steps-mobile.png" class="img-responsive center-block visible-xs" />
            {/if}
          {else}
            <img src="../template/templates/live/{$lp}/{$lang}/steps.png" class="img-responsive center-block hidden-xs" />
            <img src="../template/templates/live/{$lp}/{$lang}/steps-mobile.png" class="img-responsive center-block visible-xs" />
          {/if}
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
    {if $countryCode == 'CHE'}
      {if $lang == 'fr'}
        {include file="footer_fr_v2.tpl"}
      {else}
         {include file="footer_de_v2.tpl"}
      {/if}
    {else}
      {include file="partial/footer/_footerSelector.tpl"}
    {/if}
{/block}
