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
    <link href="betfirst/src/css/bootstrap.min.css" rel="stylesheet">
    <link href="template/templates/sport/{$lp}/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="betfirst/src/css/remodal.css">
    <link rel="stylesheet" href="betfirst/src/css/remodal-default-theme.css">

    <style>
      .main {
        background-image: url('template/templates/sport/{$lp}/bg.jpg');
      }
      .offscreen{
				position: absolute;
				margin-top: -5000px;
		  }



    </style>

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
            <a href="{$url}" rel="nofollow">
              <img src="{$lang}/img/logo.png" alt="NetBet" class="pull-left img-responsive" >
            </a>
          </div>
          <div class="col-xs-4 text-center hidden-xs custom-text">
            <h4 style="color: white;">{$text}</h4>
          </div>

          <div class="col-xs-6 col-sm-4 lang">

          	<div class="dropdown pull-right">
          	{if $lang == 'fr'}
      				<button id="dropdownMenu" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        				 <span><img src="{$lang}/img/fr.png" alt="France"></span> Français
        				<span class="caret"></span>
      				</button>
      				<ul class="dropdown-menu" aria-labelledby="dropdownMenu">

                		<li>
                  			<a href="//go.betfirst.be/?lp={$lp}&lang=nl" rel="nofollow">
                    			<span><img src="{$lang}/img/nl.png" alt="Natherland"></span> Nederlands
                  			</a>
                		</li>
                    <li>
                        <a href="//go.betfirst.be/?lp={$lp}&lang=en" rel="nofollow">
                          <span><img src="{$lang}/img/en.png" alt="English"></span> English

                        </a>
                    </li>
                 		<!-- end of NL lang -->
      				</ul>
      				{elseif $lang == 'nl'}
        				<button id="dropdownMenu" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          				 <span><img src="{$lang}/img/nl.png" alt="Natherland"></span> Nederlands
          				<span class="caret"></span>
        				</button>
        				<ul class="dropdown-menu" aria-labelledby="dropdownMenu">

                  		<li>
                    			<a href="//go.betfirst.be/?lp={$lp}&lang=fr" rel="nofollow">
                    				<span><img src="{$lang}/img/fr.png" alt="France"></span> Français

                    			</a>
                  		</li>
                      <li>
                          <a href="//go.betfirst.be/?lp={$lp}&lang=en" rel="nofollow">
                            <span><img src="{$lang}/img/en.png" alt="English"></span> English

                          </a>
                      </li>
                   		<!-- end of NL lang -->
                {elseif $lang == 'en'}
          				<button id="dropdownMenu" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            				 <span><img src="{$lang}/img/en.png" alt="English"></span> English
            				<span class="caret"></span>
          				</button>
          				<ul class="dropdown-menu" aria-labelledby="dropdownMenu">

                      <li>
                    			<a href="//go.betfirst.be/?lp={$lp}&lang=nl" rel="nofollow">
                      			<span><img src="fr/img/nl.png" alt="Natherland"></span> Nederlands
                    			</a>
                  		</li>
                      <li>
                          <a href="//go.betfirst.be/?lp={$lp}&lang=fr" rel="nofollow">
                            <span><img src="nl/img/fr.png" alt="France"></span> Français

                          </a>
                      </li>
                   		<!-- end of EN lang -->
             	{/if}
			</div>

          </div>
         <!-- end of lang select -->

        </div>
      </div>
    </nav>
    <!-- end of NAV -->


    <a href="{$url}" rel="nofollow">
    <section class="mobile visible-xs">
    	<div class="container">
    		<div class="row">
    			<div class="col-xs-12">
    					<img src="template/templates/sport/{$lp}/{$lang}/mobile.jpg" class="img-responsive  " alt="">
    			</div>
    		</div>
    	</div>
    </section>
    <section class="main hidden-xs">
      <div class="container-fluid">
        <div class="row">
          <div class="col-xs-10 col-sm-9 col-lg-9 ">

            <div class="offer clearfix" >
              	 <img src="template/templates/sport/{$lp}/{$lang}/offer.png" class="img-responsive" alt="">
	      		<!-- <h1>GET A &pound;50 FREE BET</h1> -->
            </div>

          </div>
        </div>
        <!-- end of offer row -->
        <!-- <div class="row">
          <div class="col-xs-12 col-sm-5 pull-right">
            <div class="button text-center">
             <div  class="CTA-button center-block">BET NOW</div>
            </div>
          </div> -->


        </div>
        <!-- end of button row -->

      </div>
    <!-- end of main container -->


    </section>
    </a>
    <!-- end of main section -->
    <a href="{$url}">
    <section class="steps">
      <div class="container">
        <div class="row">
               <div class="col-xs-12">
                   <img src="template/templates/sport/{$lp}/{$lang}/steps.png" alt="" class="img-responsive center-block hidden-xs">
                   <img src="template/templates/sport/{$lp}/{$lang}/steps_mobile.png" alt="" class="img-responsive center-block visible-xs">
               </div>

         </div>
      </div>
    </section>
    </a>
    <a href="{$url}" rel="nofollow">
      <section class="steps">
      	<div class="container-fluid">
      		<div class="row visible-xs">
      			<div class="text-center">
      				{if $text}
          				<h3>{$text}</h3>
          			{/if}
        		</div>
      		</div>

        	<!-- end of lage screen steps -->

        	<!-- <div class="row">
          		<div class="col-xs-12 visible-xs">
              		<img src="{$lang}/img/steps_mobile.png" alt="" class="img-responsive center-block">
          		</div>
        	</div> -->
       		 <!-- end of small sreen steps -->
      	</div>

      </section>
    </a>
    <!-- end of steps section -->



    {include file="footer_{$lang}_v1.tpl" }

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
    <script src="betfirst/src/js/bootstrap.min.js"></script>
    <script src="betfirst/src/js/remodal.min.js"></script>
    <script src="betfirst/src/js/app.js"></script>

     <script>
      $(function(){
        // $("#modal1Desc").load("{$lang}/terms.html");
      });
      $('.steps-mobile').css('display', 'none').removeClass('visible-xs');
    </script>

    <!-- Cookies here -->
    {if $url_cookies}
    <script type="text/javascript" src="{$url_cookies}"></script>
    {/if}

	     <div class="sr-only">
		     betfirst
	     </div>
    </body>
  </html>
