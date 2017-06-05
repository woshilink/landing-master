{extends file="base/base.tpl"}
{block name=title}{$name} {$title}{/block}
{block name=head}

<link href="{$asset}/styles.css" rel="stylesheet">
<link rel="stylesheet" href="src/css/remodal.css">
<link rel="stylesheet" href="src/css/main.css">
<link rel="stylesheet" href="src/css/remodal-default-theme.css">

<style>
.main{
	background-image: url('{$asset}/bg.jpg');
}
.steps{
	display: none;
}
.frame{
	/*background-image: url('../template/templates/{$product}/{$lp}/frame.png');*/
	background: rgba(0,0,0,0.7);
	border-radius: 1em;
}
</style>
{/block}
{block name=body}
    {assign "lpconf" "{$smarty.current_dir}/{$lang}/lp.conf"}
    {config_load file=$lpconf}
	<section id="main-nav">
		<nav class="navbar black-transparent">
			<div class="container">
				{include file="lab/organisms/nav/nav-main.tpl" text=$text}
			</div>
		</nav>
	</section>
<section class="mobile">
	<a href="{$cta.casino}" rel="nofollow">
		<div class="container-fluid">
			<div class="row ">
				<div class="col-xs-12">
					<img src="{$asset}/{$lang}/mobile.jpg" class="visible-xs img-responsive center-block" classalt="Mobile background">
				</div>
			</div>
			<!-- end of mobile background -->
		</div>
	</a>
</section>
<section class="main hidden-xs">
	<div class="container">
		<div class="row">
			<div class="col-xs-4 hidden-xs left-box">
				<div class="offer">
					<a href="{$cta.casino}" rel="nofollow">
						<img src="{$asset}/{$lang}/offer.png" class="img-responsive center-block" alt="">
						<!--<img src="{$asset}/{$lang}/button.png" class="btn img-responsive center-block" alt="">-->
					</a>
				</div>
				<!-- end of offer -->
			</div>
				<div class="col-xs-12 col-sm-5 col-md-5 col-sm-offset-3 frame hidden-xs">
					<video width="100%" autoplay="" muted="" loop="">
						<source src="{$asset}/video.mp4" type="video/mp4">
					</video>
					<img src="{$asset}/logo.png" alt="" class="logoImg" />
				</div>


			</div>

			<!-- end of mobile text -->
		</div>
		<!-- end of container  -->
	</section>
	<!-- end of section -->
	<section class="steps-live">
		<div class="container">
			{if !empty($text)}
			<div class="row">
				<div class="col-xs-12 header-text text-center visible-xs">
					<h3>{$text}</h3>
				</div>
			</div>
			{/if}
			<div class="row">
				<div class="col-xs-12">
					<a href="{$cta.casino}" rel="nofollow">
						<div class="row hidden-xs">
							<div class="col-xs-12">
								<img src="{$asset}/{$lang}/steps.png" alt="" class=" hidden-xs img-responsive center-block">
							</div>
						</div>
						<img src="{$asset}/{$lang}/steps-mobile.png" alt="" class="visible-xs img-responsive center-block">
					</a>
				</div>
			</div>
			<!-- end of large screen steps -->
		</div>
	</section>
	<!-- end of steps row -->
	<section id="terms">
		<div class="container">
			<div class="row terms">
				<div class="col-xs-11">
					<br>
					<p class="pull-left terms">
						*<a href="#modal" >
							<span class="text-white">Teilnahmebedingungen</span>

						</a>
					</p>

					<br>

				</div>
			</div>
		</div>
	</section>
	<section id="footer" class="bg-darkgrey">
		<div class="container">
			{include file="lab/organisms/footer/footer-main.tpl"
            responsible_text_header = #responsible_text_header#
            payment_text_header = #payment_text_header#
            }
		</div>
	</section>

	<!-- include footer -->
	<div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
		<button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
		<div>
            {include file="pages/landing/netbetcom/terms/{$product}/50freespins/{$lang}/terms.tpl"}
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
		$(function(){
			$("#modal1Desc").load("{$lang}/videoLP50free/terms.html");
		});
	</script>
{/block}