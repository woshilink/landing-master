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
			background-image: url('../template/templates/casino/{$lp}/bg.jpg');
		}
		.steps{
			display: none;
		}
		@media only screen and (max-width : 767px) {

    		.main{


    			background-image: none;
    		}
    	}
    	{if $lp == '30freespins' && $lang == 'de'}
    		.offer {
    			margin-top: 60px;
			}
    	{/if}
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
						  <img src="../template/templates/casino/{$lp}/{$lang}/992.jpg" class="visible-sm img-responsive center-block" classalt="Mobile background">

	         </div>
	       </div>
	       <!-- end of mobile background -->
	   	</div>
   	</a>
   </section>
  <section class="main">
    <div class="container">

       <div class="row">

         <div class="col-xs-12 col-sm-5 col-md-4 col-lg-5 pull-right  hidden-xs hidden-sm">
           <div class="offer">
            <a href="{$url}" rel="nofollow">
             <img src="../template/templates/casino/{$lp}/{$lang}/offer.png" class="img-responsive center-block" alt="">
            </a>
           </div>
           <!-- end of offer -->
         </div>

       </div>
        <div class="row" >

          <div class="col-xs-12 header-text text-center visible-xs">
            <h3>{$text}</h3>
          </div>

        </div>
        <!-- end of mobile text -->
    </div>
    <!-- end of container  -->
   </section>
   <!-- end of section -->
    <section class="steps-live">
      <div class="container">

        <div class="row">
          <div class="col-xs-12 hidden-xs">
          	<a href="{$url}" rel="nofollow">
            <img src="../template/templates/casino/{$lp}/{$lang}/steps.png" alt="" class="img-responsive center-block">
            </a>
          </div>
        </div>
        <!-- end of large screen steps -->
        <div class="row">
          <div class="col-xs-12 visible-xs">

            <a href="{$url}" rel="nofollow">
               <img src="../template/templates/casino/{$lp}/{$lang}/steps_mobile.png" alt="" class="img-responsive center-block">


          </div>
        </div>
        </div>
        <!-- end of small screen steps -->
      </div>

    </section>
    <!-- end of steps row -->
<div class="container">
	<section class="terms1">
		<div class="container-fluid">
			<a href="#modal">
			{if $lang == 'fr'}
				<p>*Termes et Conditions</p>
			{elseif $lang == 'nl'}
				<p>*Algemene voorwaarden</p>
			{elseif $lang == 'de'}
				<p>* Teilnahmebedingungen</p>
			{else}
				<p>*Terms & Condition</p>
			{/if}
			</a>

		</div>
	</section>

		 {$footer_content}
	</div>

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
      $(function(){
        $("#modal1Desc").load("../template/templates/casino/{$lp}/{$lang}/terms.html");
      });
     </script>

{/block}
