<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="noindex, nofollow">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>{$name} {$title}</title>

	<link rel="icon" type="image/png" href="favicon.ico">
    <!-- Bootstrap -->
    <link href="live-dealer/src/css/bootstrap.min.css" rel="stylesheet">

    <link href="{$lang}/footer.css" rel="stylesheet">
    <link href="live-dealer/src/css/styles.css" rel="stylesheet">
    <link href="live-dealer/src/css/animate.css" rel="stylesheet">
    <link rel="stylesheet" href="live-dealer/src/css/remodal.css">
    <link rel="stylesheet" href="live-dealer/src/css/remodal-default-theme.css">

    <style>
      .main {
        background-image: url('../template/templates/casino/{$lp}/bg.jpg');
      }
      .offscreen{
				position: absolute;
				margin-top: -5000px;
	   }
	   .terms{
	   	display: none;
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
        margin-top: 370px;
    }

    </style>
	{include file="all_head.tpl" }
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    {include file="gamma.tpl" }

    <nav class="navbar">
      <div class="container-fluid">
        <div class="row">
          <div id="logo" class="col-xs-6 col-sm-4 ">
            <a href="{$url}" rel="nofollow">
              <img src="img/logo.png" alt="NetBet" class="pull-left img-responsive" >
            </a>
          </div>
          <div class="col-xs-4 text-center hidden-xs custom-text">
            <h4 style="color: white;">{$text}</h4>
          </div>
          <!-- Co logo -->
          {if $co_logo}
          <div class="col-xs-6 col-sm-4 logo">
            <img src="{$co_logo}" class="img-responsive center-block" alt="">
          </div>
          <!-- end of co logo -->
          {/if}

        </div>
      </div>
    </nav>
    <!-- end of NAV -->

    <a href="{$url}" rel="nofollow">
    <section class="mobile visible-xs">
    	<div class="container-fluid">
    		<div class="row">

    			<div class="col-xs-12">
    				<img src="../template/templates/casino/{$lp}/{$lang}/mobile.jpg" class="img-responsive center-block" />


    			</div>
    		</div>
    	</div>
    </section>
    <!--  End of mobile section -->

    <section class="main hidden-xs">
      <div class="container-fluid">
        <div class="row">
          <div class="col-xs-12">
          	<div class="text">
          		 <img src="../template/templates/casino/{$lp}/{$lang}/text.png" class="img-responsive center-block " />
          	</div>


        </div>
        <!-- end of offer row -->


      </div>
    <!-- end of main container -->
       <div class="row">
		      <div class="steps-d">
		      	 <div class="col-xs-8 hidden-xs">
		              <img src="../template/templates/casino/{$lp}/{$lang}/steps1.png" alt="" class="img-responsive center-block">
		        </div>
		        <div class="col-xs-4 hidden-xs">
		              <img src="../template/templates/casino/{$lp}/{$lang}/steps2.png" alt="" class="img-responsive center-block animated  20sec" style="margin-top: 2px;">
		        </div>
		      </div>
		</div>
		        	<!-- end of lage screen steps -->

    </section>
    </a>
    <!-- end of main section -->

    <a href="{$url}" rel="nofollow">
      <section class="steps-m">
      	<div class="container-fluid">
      		<div class="row visible-xs">
      			<div class="text-center">
          			<h3>{$text}</h3>
        		</div>
      		</div>

        	<div class="row">
          		<div class="col-xs-12 visible-xs">
              		<img src="../template/templates/casino/{$lp}/{$lang}/steps-m1.png" alt="" class="img-responsive center-block">
          		</div>
        	</div>
        	<div class="row">
          		<div class="col-xs-12 visible-xs">
              		<img src="../template/templates/casino/{$lp}/{$lang}/steps-m2.png" alt="" class="img-responsive center-block">
          		</div>
        	</div>
       		 <!-- end of small sreen steps -->

      	</div>

      </section>
    </a>
    <!-- end of steps section -->
	<section class="terms-link">
		<div class="container-fluid">
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
    {include file="footer_{$lang}_v2.tpl" }

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
    <script src="live-dealer/src/js/bootstrap.min.js"></script>
    <script src="live-dealer/src/js/remodal.min.js"></script>
     <script src="live-dealer/src/js/jquery.countdown.js"></script>
     <!-- Include MomentJS library -->
	<script src="live-dealer/src/js/moment.js"></script>
	<script src="live-dealer/src/js/moment-timezone.js"></script>



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

    {include file="analytics.tpl" }
	<div class="template sr-only">
		<p>casino_live-dealer</p>
	</div>
  </body>
</html>
