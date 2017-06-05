{extends file="base/base.tpl"}
{block name=title}
	Netbet Casino
{/block}
{block name=head}
	<link href="src/css/main.css" rel="stylesheet">
	<link href="{$asset}/styles.css" rel="stylesheet">
	<link href="src/css/animate.css" rel="stylesheet">
	<link rel="stylesheet" href="src/css/remodal.css">
	<link rel="stylesheet" href="src/css/remodal-default-theme.css">

	<style>
		.main {
			background-image: url('{$asset}/bg.jpg');
		}
		.offscreen{
			position: absolute;
			margin-top: -5000px;
		}
		.terms{
			display: none;
		}
		.terms-link{
			margin-top: 20px;
		}
		.terms-link a{

			color: white;
			text-decoration: none;
		}
		.terms-link a:hover{
			color: dimgray;
		}
		.text{
			margin-top: 0;
		}
		.steps-d {
			margin-top: 325px;
		}

	</style>

{/block}
{block name=body}
	<section id="main-nav">
		<nav class="navbar black-transparent">
			<div class="container">
				{include file="lab/organisms/nav/nav-main.tpl" text=$text}
			</div>
		</nav>
	</section>
	<!-- end of NAV -->
	<a href="{$cta.casino}" rel="nofollow">
		<section class="mobile visible-xs">
			<div class="container">
				<div class="row">

					<div class="col-xs-12">
						<img src="{$asset}/{$lang}/mobile.jpg" class="img-responsive center-block" />


					</div>
				</div>
			</div>
		</section>
		<!--  End of mobile section -->

		<section class="main hidden-xs">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<div class="text">
							<img src="{$asset}/{$lang}/text.png" class="img-responsive center-block " />
						</div>


					</div>
					<!-- end of offer row -->


				</div>
				<!-- end of main container -->
				<div class="row">
					<div class="steps-d">
						<div class="col-xs-8 hidden-xs">
							<img src="{$asset}/{$lang}/steps1.png" alt="" class="img-responsive center-block">
						</div>
						<div class="col-xs-4 hidden-xs">
							<img src="{$asset}/{$lang}/steps2.png" alt="" class="img-responsive center-block animated  20sec" style="margin-top: 2px;">
						</div>
					</div>
				</div>
				<!-- end of lage screen steps -->

		</section>
	</a>
	<!-- end of main section -->

	<a href="{$url}" rel="nofollow">
		<section class="steps-m">
			<div class="container">
				<div class="row visible-xs">
					<div class="text-center">
						<h3>{$text}</h3>
					</div>
				</div>

				<div class="row">
					<div class="col-xs-12 visible-xs">
						<img src="{$asset}/{$lang}/steps-m1.png" alt="" class="img-responsive center-block">
					</div>
				</div>
				<div class="row">
					<div class="col-xs-12 visible-xs">
						<img src="{$asset}/{$lang}/steps-m2.png" alt="" class="img-responsive center-block">
					</div>
				</div>
				<!-- end of small sreen steps -->

			</div>

		</section>
	</a>
	<!-- end of steps section -->
	<section class="terms-link">
		<div class="container">
			<div class="row">
				<div class="col-xs-12 col-sm-3">
					<p class="text-center">
						{if $lp == 'live-dealer-360frei' || $lang == 'ja' && $lp == 'live-dealer'}
						<a  href="#modal">
							{else}
							<a  href="https://help.netbet.com/{$lang}/casino/conditions" target="blank">
								{/if}
								{if $lang == 'de'}
									<span>* Teilnahmebedingungen</span>
								{elseif $lang == 'ro'}
									<span>* Termeni și condiții</span>
								{elseif $lang == 'ru'}
									<span>* Условия и Положения</span>
								{elseif $lang == 'nl'}
									<span>* Algemene voorwaarden</span>
								{elseif $lang == 'fr'}
									<span>* Conditions Générales</span>
								{elseif $lang == 'el'}
									<span>* Όροι και Συνθήκες</span>
								{elseif $lang == 'ja'}
									<span>* 利用規約</span>
								{else}
									<span>* Terms &amp; Conditions</span>
								{/if}
							</a>
					</p>
				</div>
			</div>
		</div>
	</section>
	<section id="footer" class="bg-darkgrey">
		<div class="container">
			{include file="lab/organisms/footer/footer-main.tpl"
			responsible_text_header = '安全と信頼'
			payment_text_header = 'お支払い方法'
			}
		</div>
	</section>

	<div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
		<button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
		<div>
			<p id="modal1Desc"></p>
		</div>
		<!-- loadind terms from terms from Jquery -->
		<br>
		<button data-remodal-action="confirm" class="remodal-confirm">OK</button>
	</div>
	<!-- end of modal pop up -->


{/block}
{block name=footer}
	<script src="src/js/remodal.min.js"></script>


	<script>
		$(function(){
			{if $lp == 'live-dealer-360frei'}
			$("#modal1Desc").load("{$lang}/terms.html");
			{elseif  $lang == 'ja' && $lp == 'live-dealer'}
			$("#modal1Desc").load("live-dealer/{$lp}/{$lang}/terms.html");
			{/if}
		});
	</script>
	<script>
		function animate() {
			$(".20sec").toggleClass("bounce");
			setTimeout(animate, 2000);
		}
		animate();
	</script>
	<!-- Cookies here -->
	{if $url_cookies}
		<script type="text/javascript" src="{$url_cookies}"></script>
	{/if}

{/block}


