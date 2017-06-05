<!DOCTYPE html>
<html lang="{$lang}">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="noindex, nofollow">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>{$name} {$title}</title>

	<link rel="icon" type="image/png" href="favicon.ico">
    <!-- Bootstrap -->
    <link href="landing/viva/src/css/bootstrap.min.css" rel="stylesheet">
  	<link href="//fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300italic,700&amp;subset=latin,cyrillic" rel="stylesheet" type="text/css">
    <link href="footer.css" rel="stylesheet">

    <link href="landing/viva/src/css/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="landing/viva/src/css/remodal.css">
    <link rel="stylesheet" href="landing/viva/src/css/remodal-default-theme.css">
  	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js" async></script>
  	<script>document.createElement( "picture" );</script>

  	<script src="landing/viva/src/js/picturefill.min.js" async></script>

    <style>
      .main {
        background-image: url('landing/viva/{$lp}/{$lang}/bg.jpg');
      }
      .terms{
      	display: none;
      }
   	@media only screen and (max-width : 1440px) {
   		.main{
   			background-image: none;
   		}
   		.main .col-xs-12{
   			padding-left: 0;
   			padding-right: 0;
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
  </head>
  <body>
{$gtm}
    {include file="gamma.tpl" }

    <nav class="navbar">
      <div class="container-fluid">
        <div class="row">
          <div id="logo" class="col-xs-6 col-sm-4 ">
            <a href="{$url}">
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

    <a href="{$url}">
    <section class="main">
      	<picture>
              <source srcset="landing/viva/{$lp}/{$lang}/bg.jpg" media="(min-width: 1441px)">
              <source srcset="landing/viva/{$lp}/{$lang}/1440.jpg" media="(min-width: 1367px)">
              <source srcset="landing/viva/{$lp}/{$lang}/1366.jpg" media="(min-width: 1081px)">
              <source srcset="landing/viva/{$lp}/{$lang}/1080.jpg" media="(min-width: 321px)">
              <source srcset="landing/viva/{$lp}/{$lang}/320.jpg" media="(max-width: 320px)">
              <img srcset="landing/viva/{$lp}/{$lang}/1440.jpg" alt="…" class="img-responsive">
       </picture>
      <div class="container-fluid">
        <div class="row">
          <div class="col-xs-12">


            <div class="box">
            	<div class="row">
            		<div class="col-xs-12 col-sm-8">
            			 	<div class="offer" >
			              		{if $lang == 'de'}
			              			<div class="en">
				      					<h2>Gewinnen Sie sich nach <strong>LAS VEGAS</strong></h2>
				      					<h1><b>250.000 &euro;</b><small><nobr> in Garantierten Paketen!</nobr></small></h1>
				      	  			</div>
				      	  		{elseif $lang == 'ru'}
			              			<div class="en">
				      					<h2>Выиграйте свой путь в <strong>Лас-Вегас</strong></h2>
				      					<h1><b>&euro;250,000</b><small><nobr> в Гарантированных Пакетах</nobr></small></h1>
				      	  			</div>
				      	  		{elseif $lang == 'ro'}
			              			<div class="en">
				      					<h2>Te trimitem în  <strong>Las Vegas!</strong></h2>
				      					<h1><small><nobr> Pachete garantate în valoare de</nobr></small><b>&euro;250,000</b></h1>
				      	  			</div>
			              	  {else}
			              			<div class="en">
				      					<h2>Win your way to <strong>LAS VEGAS</strong></h2>
				      					<h1><b>&euro;250,000</b><small><nobr> in Graranteed PACKAGES!</nobr></small></h1>
				      	  			</div>
			           	  		{/if}
			            	</div>
			            	 <!-- end of offer row -->

            		</div>
            		<div class="col-xs-12 col-sm-4">
            			 <div class="button ">
            			 	{if $lang == 'de'}
             					<div class="de ">
             						<div  class="CTA-button center-block">JETZT SPIELEN</div>
             					</div>
             				{elseif $lang == 'ru'}
             					<div class="en">
             						<div  class="CTA-button center-block">ИГРАТЬ СЕЙЧАС</div>
             					</div>
             				{elseif $lang == 'ro'}
             					<div class="en">
             						<div  class="CTA-button center-block">JOACĂ ACUM</div>
             					</div>
             				{else}
		             			<div class="en">
             						<div  class="CTA-button center-block">PLAY NOW</div>
             					</div>
		            		{/if}

		            		<div class="tc">
		            			<img src="landing/viva/src/img/18plus.jpg" />
                      {if $lang == 'ru'}
                        <a href="#modal"><i>Условия и Положения</i></a>
                      {elseif $lang == 'ro'}
                        <a href="#modal"><i>Termeni și Condiții</i></a>
                      {elseif $lang == 'de'}
                        <a href="#modal"><i>Teilnahmebedingungen</i></a>
                      {else}
                        <a href="#modal"><i>T&C Apply</i></a>
                      {/if}

		            		</div>

		            	 </div>
            		</div>
            	</div>
            </div>
            <!--  End of box -->

          </div>

          <!-- End of col -->

        </div>
      </div>
    <!-- end of main container -->

    </section>
    </a>
    <!-- end of main section -->

    <a href="{$url}">
      <section class="steps">
      	<div class="container-fluid">
      		<div class="row visible-xs">
      			<div class="text-center">
          			<h3>{$text}</h3>
        		</div>
      		</div>
      		 <div class="row">
          		<div class="col-xs-12">
          			<div class="row">
          				<div class="step col-xs-12 col-sm-4">
          					<div class="row">
          						<div class="col-xs-4 col-sm-12">
          							 <button type="button" class="btn btn-default btn-circle">1</button>
          						</div>
          						<div class="col-xs-8 col-sm-12">
          							 {if $lang == 'de'}
          							 <div class="de">
          							 	<h3>ANMELDEN</h3>
          							 </div>
          							 {elseif $lang == 'ro'}
          							 <div class="de">
          							 	<h3>ÎNSCRIE-TE</h3>
          							 </div>
                         {elseif $lang == 'ru'}
          							 <div class="de">
          							 	<h3>Регистрация</h3>
          							 </div>
          							 {else}
          							 	<h3>Register</h3>
            				 		 	<p>download free the mobile app</p>
          							 {/if}
          						</div>
          					</div>


	          			</div>

	              		<div class="step col-xs-12 col-sm-4">
	              			<div class="row">
          						<div class="col-xs-4 col-sm-12">
          							 <button type="button" class="btn btn-default btn-circle">2</button>
          						</div>
          						<div class="col-xs-8 col-sm-12">
          							 {if $lang == 'de'}
          							 	<div class="de">
          							 		<h3>EINZAHLEN</h3>
          							 	</div>
          							  {elseif $lang == 'ro'}
	          							 <div class="de">
	          							 	<h3>DEPUNE</h3>
	          							 </div>
                           {elseif $lang == 'ru'}
            							 <div class="de">
            							 	<h3>Депозит</h3>
            							 </div>
            							 {else}
            							 	<h3>Deposit</h3>
              				 		 	<p>from &euro;20 to &euro;1,500</p>
              				 		 {/if}
          						</div>
          					</div>


	              		</div>

						<div class="step col-xs-12 col-sm-4">
							<div class="row">
          						<div class="col-xs-4 col-sm-12">
          							<button type="button" class="btn btn-default btn-circle">3</button>
          						</div>
          						<div class="col-xs-8 col-sm-12">
          							 {if $lang == 'de'}
          							 	<div class="de">
          							 		<h3>SPIELEN</h3>
          							 	</div>
          							 {elseif $lang == 'ro'}
	          							 <div class="de">
	          							 	<h3>JOACĂ</h3>
	          							 </div>
                          {elseif $lang == 'ru'}
                           <div class="de">
                            <h3>Играть</h3>
                           </div>
          							 {else}
          							<h3>Get Bonus & Play</h3>
            				 		<p>anytime, anywhere on your mobile</p>
          							{/if}
          						</div>
          					</div>


						</div>
          			</div>



          		</div>
        	</div>

        	<!-- end of lage screen steps -->

      	</div>

      </section>
    </a>
    <!-- end of steps section -->


    {if $lang == 'ie'}
        {include file="footer_en_v2.tpl" }
    {else}
    	{include file="footer_{$lang}_v2.tpl" }
	{/if}
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
    <script src="landing/viva/src/js/bootstrap.min.js" async></script>
    <script src="landing/viva/src/js/remodal.min.js" async></script>

     <script>
			   $(function(){
        		$("#modal1Desc").load("landing/viva/{$lp}/{$lang}/terms.html");
      		});
    </script>

    <!-- Cookies here -->
    {if $url_cookies}
    <script type="text/javascript" src="{$url_cookies}"></script>
    {/if}

    {include file="analytics.tpl" }
	<div class="sr-only">
		<b>Template is {$smarty.template}</b>
	</div>
  </body>
</html>
