{extends file="layout.tpl"}
{block name=title}{$name} {$title}{/block}
{block name=head}

<link rel="icon" type="image/png" href="favicon.ico">
<!-- Bootstrap -->
<link href="free25spin/src/css/bootstrap.min.css" rel="stylesheet">
<link href="footer.css" rel="stylesheet">
<link href="../template/templates/casino/{$lp}/styles.css" rel="stylesheet">
<link rel="stylesheet" href="free25spin/src/css/remodal.css">
<link rel="stylesheet" href="free25spin/src/css/remodal-default-theme.css">


<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<style>
.main{
	background-image: url('../template/templates/{$product}/{$lp}/bg.jpg');
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
<div class="container">
	{include file="partial/nav/_nav.tpl"}
</div>
<section class="mobile">
	<a href="{$url}" rel="nofollow">
		<div class="container-fluid">
			<div class="row ">
				<div class="col-xs-12">
					<img src="../template/templates/casino/{$lp}/{$lang}/mobile.jpg" class="visible-xs img-responsive center-block" classalt="Mobile background">
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
					<a href="{$url}" rel="nofollow">
						<img src="../template/templates/casino/{$lp}/{$lang}/offer.png" class="img-responsive center-block" alt="">
					</a>
				</div>
				<!-- end of offer -->
			</div>
				<div class="col-xs-12 col-sm-5 col-md-5 col-sm-offset-3 frame hidden-xs">
					<video width="100%" autoplay="" muted="" loop="">
						<source src="../template/templates/casino/{$lp}/video.mp4" type="video/mp4">
					</video>
					<img src="../template/templates/casino/{$lp}/logo.png" alt="" class="logoImg" />
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
					<a href="{$url}" rel="nofollow">
						<div class="row hidden-xs">
							<div class="col-xs-12">
								<img src="../template/templates/casino/{$lp}/{$lang}/steps.png" alt="" class=" hidden-xs img-responsive center-block">
							</div>
						</div>
						<img src="../template/templates/casino/{$lp}/{$lang}/steps-mobile.png" alt="" class="visible-xs img-responsive center-block">
					</a>
				</div>
			</div>
			<!-- end of large screen steps -->
		</div>
	</section>
	<!-- end of steps row -->
	{include file="partial/footer/_footerSelector.tpl"}

	<!-- include footer -->
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

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="free25spin/src/js/bootstrap.min.js"></script>
	<script src="free25spin/src/js/jquery-1.11.1.min.js"></script>
	<script src="free25spin/src/js/remodal.min.js"></script>

	<script>
	$('footer>div').removeClass('container-fluid');
	$('footer>div').addClass('container');
	$(function(){
		$("#modal1Desc").load("{$lang}/videoLP50free/terms.html");
	});
	</script>

	{/block}
