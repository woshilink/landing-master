<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="noindex, nofollow">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>{$name} {$title}</title>

    <!-- Bootstrap -->
    <link rel="icon" type="image/png" href="favicon.ico">
    <link href="/src/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../resources/views/pages/landing/netbetgr/sport/suzy/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="esport/src/css/remodal.css">
    <link rel="stylesheet" href="esport/src/css/remodal-default-theme.css">

    <style>

    {include file='pages/lp-asset/netbetgr/sport/suzy/styles.tpl'}
  
      .main {
        background-image: url('/img/bg.jpg');
      }
      .offscreen{
				position: absolute;
				margin-top: -5000px;
      }

	    {if $lp == 'darts200' or $lp == 'darts'}
	    		.offer {
    			margin-top: 20px;
    		}
    		.button{
    			margin-top: 15px;
    		}
    		.main{
    			    height: 550px;
    		}
    		@media only screen and (max-width : 1200px) {

    			.offer {
    				margin-top: 0px;
    			}
    			.button{
    				margin-top: 0px;
    			}

    		}
    	{elseif $lp == 'spurs-v-arsenal'}
    		.offer {
    			margin-top: 20px;
    		}
		{/if}

    </style>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


  </head>
  <body>
    {$domain}
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
          <div class="col-xs-6 col-sm-4 co-logo">
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
  		<img src="../template/templates/sport/{$lp}/img/mobile.jpg" alt="" class="img-responsive center-block">
  		 <div class="button text-center">

<!--             	<div  class="CTA-button center-block ">BET NOW</div>-->

         </div>
  	</section>
    <section class="main hidden-xs">
      <div class="container-fluid">
        <div class="row">
          <div class="col-xs-5 col-sm-5 col-md-5 col-lg-5  pull-right">
          	<div class="box">
            	<div class="offer " >
              		<img src="{$smarty.template}/img/offer.png" alt="" class="img-responsive center-block">

            	</div>
             	<!-- end of offer row -->

                <div class="button text-center">

		             <!--	<div  class="CTA-button center-block">BET NOW</div>-->

           		</div>
           		 <!-- end of button row -->
          	</div>

          </div>
        </div>

      </div>
    <!-- end of main container -->

    </section>
    </a>
    <!-- end of main section -->

    <a href="{$url}" rel="nofollow">
      <section class="steps">
      	<div class="container-fluid">
      		<div class="row visible-xs">
      			<div class="text-center">
          			<h3>{$text}</h3>
        		</div>
      		</div>
      		 <div class="row">
          		<div class="col-xs-12 hidden-xs">
              		<img src="{$smarty.template}/img/steps.jpg" alt="" class="img-responsive center-block">
          		</div>
        	</div>
        	<!-- end of lage screen steps -->

        	<div class="row">
          		<div class="col-xs-12 visible-xs">
              		<img src="{$smarty.template}/img/steps_mobile.jpg" alt="" class="img-responsive center-block">
          		</div>
        	</div>
       		 <!-- end of small sreen steps -->
      	</div>

      </section>
    </a>
    <!-- end of steps section -->

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
    <script src="esport/src/js/bootstrap.min.js"></script>
    <script src="esport/src/js/remodal.min.js"></script>

     <script>
      $(function(){

        	$("#modal1Desc").load("suzy/{$lp}/terms.html");

      });
      $('.terms').css('display', 'none');
    </script>

    <!-- Cookies here -->
    {if $url_cookies}
    <script type="text/javascript" src="{$url_cookies}"></script>
    {/if}

	<div class="sr-only">
		<p>sport_suzy</p>
	</div>
  </body>
</html>
