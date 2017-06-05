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
    <link href="sports-casino1/src/css/bootstrap.min.css" rel="stylesheet">
    <link href="footer.css" rel="stylesheet">
    <link href="../template/templates/sport-casino/{$lp}/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="sports-casino1/src/css/remodal.css">
    <link rel="stylesheet" href="sports-casino1/src/css/remodal-default-theme.css">

    <style>
      .main {
        background-image: url('../template/templates/sport-casino/{$lp}/bg.jpg');
      }
      .offscreen{
				position: absolute;
				margin-top: -5000px;
	   }

	  @media only screen and (max-width : 768px) {
	  	.main {
        	background-image: none;
      	}
	  	.offer-sec {
        	background-image: url('../template/templates/sport-casino/{$lp}/mobile.jpg');
        	background-size: cover;
      	}
	  }
	  @media only screen and (max-width : 480px) {
	  	.main {
        	background-image: url('../template/templates/sport-casino/{$lp}/mobile.jpg');
    		background-position: bottom;
    		background-size: initial;
    		height: 400px;
      	}
      	.offer-sec {
        	background-image: none;
        	background-size: cover;
      	}
	  }
    </style>
	{include file="all_head.tpl" }
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    {include file="analytics.tpl" }

  </head>
  <body>
{$gtm}
    {include file="gamma.tpl" }

    <nav class="navbar">
      <div class="container-fluid">
        <div class="row">
          <div id="logo" class="col-xs-6 col-sm-4 ">
            <a href="{$sport_url}" rel="nofollow">
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
    <section class="main">
     <div class="container-fluid">




     </div>
   <!-- end of main container -->

   </section>
    <section class="offer-sec">
      <div class="container-fluid">

        <div class="row">
        	 <div class="col-xs-6 ">
          	<div class="casino-offer">

            	<div class="icon" >
              		<a href="{$casino_url}" rel="nofollow">
	      				<img src="../template/templates/sport-casino/{$lp}/casino-offer-d.png" class="img-responsive center-block hidden-xs" alt="">
	      				<img src="../template/templates/sport-casino/{$lp}/casino-offer-m.png" class="img-responsive center-block visible-xs" alt="">
	      				<img src="../template/templates/sport-casino/{$lp}/casino-offer-d.png" class="img-responsive center-block visible-xxs" alt="">
					         </a>
            	</div>


          	</div>

          </div>
        	<div class="col-xs-6 ">
          	<div class="box">
            	<div class="sport-offer" >
               		<a href="{$sport_url}" rel="nofollow">
  	      				<img src="../template/templates/sport-casino/{$lp}/sport-offer-d.png" class="img-responsive center-block hidden-xs" alt="">
  	      				<img src="../template/templates/sport-casino/{$lp}/sport-offer-m.png" class="img-responsive center-block visible-xs" alt="">
  	      				<img src="../template/templates/sport-casino/{$lp}/sport-offer-d.png" class="img-responsive center-block visible-xxs" alt="">
  			   		    </a>
            	</div>
             	<!-- end of offer row -->


          	</div>

          </div>

        </div>




      </div>
    <!-- end of main container -->

    </section>


    <!-- end of main section -->
	<a href="{$url.sport}">
      <section class="steps">
      	<div class="container-fluid">
      		<div class="row visible-xs">
      			<div class="text-center">
          			<h3>{$text}</h3>
        		</div>
      		</div>
      		 <div class="row">
          		<div class="col-xs-12 hidden-xs">

              		<img src="../template/templates/sport-casino/{$lp}/steps.png" alt="" class="img-responsive center-block">

          		</div>
        	</div>
        	<!-- end of lage screen steps -->

        	<div class="row">
          		<div class="col-xs-12 visible-xs">

              			<img src="../template/templates/sport-casino/{$lp}/steps_mobile.png" alt="" class="img-responsive center-block">

          		</div>
        	</div>
       		 <!-- end of small sreen steps -->
      	</div>

      </section>
    </a>
    <!-- end of steps section -->
 	<section class="terms-both">
 		<div class="container-fluid">
 			<div class="row">
 				<div class="col-xs-12">
 					<div class="term">
             		 	<a href="#modal" rel="nofollow">
                  			<p>* Termeni și Condiții</p>
             				</div>
           			 	</a>
           			 </div>
 				</div>
 			</div>

 		</div>
 	</section>

   {include file="footer_sport.tpl" }

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
    <script src="sports-casino1/src/js/bootstrap.min.js"></script>
    <script src="sports-casino1/src/js/remodal.min.js"></script>
    <script src="sports-casino1/src/js/jquery.countdown.js"></script>
     <!-- Include MomentJS library -->
	<script src="sports-casino1/src/js/moment.js"></script>
	<script src="sports-casino1/src/js/moment-timezone.js"></script>

     <script>
      $(function(){
        $("#modal1Desc").load("../template/templates/sport-casino/{$lp}/terms.html");
      });

    </script>
    <script type="text/javascript">
   		 var nextYear = moment.tz("2015-10-09 19:45", "Europe/London");

 			$('#clock h1').countdown(nextYear.toDate(), function(event) {
   				$(this).html(event.strftime('%D days %H:%M:%S'))
 			});

 			$('.terms').css('display' , 'none');

 	</script>

    <!-- Cookies here -->
    {if $url_cookies}
    <script type="text/javascript" src="{$url_cookies}"></script>
    {/if}

  </body>
</html>
