{extends file="base/base.tpl"}
{block name=title}{$name} {$title}{/block}
{block name=head}


	<link rel="icon" type="image/png" href="favicon.ico">
    <!-- Bootstrap -->

    <link href="src/css/main.css" rel="stylesheet">
    <link href="{$asset}/src/css/styles.css" rel="stylesheet">
		<link href="{$asset}/src/css/animate.css" rel="stylesheet">
    <link href="src/css/remodal.css" rel="stylesheet">
    <link href="src/css/remodal-default-theme.css" rel="stylesheet">

    <style>
      .main {
        background-image: url('{$asset}/{$lang}/bg.jpg');
      }
      .offscreen{
				position: absolute;
				margin-top: -5000px;
	   }
	   .terms{
	   	display: none;
	   }
	   .terms-link a{
	   		text-decoration: none;
	   }
	   .terms-link a:hover{
	   	    color: dimgray;
	   }
	   .text{
	   	margin-top: 0;
	   }
         </style>


  <body>
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


    <a href="https://banners.livepartners.com/click.php?p=124&l=de&source=landing&bid2land=2&id=&t=register" rel="nofollow">
    <section class="mobile visible-xs">
    	<div class="container-fluid">
    		<div class="row">

    			<div class="col-xs-12">
    				<img src="{$asset}/{$lang}/mobile.jpg" class="img-responsive center-block" />


    			</div>
    		</div>
    	</div>
    </section>
    <!--  End of mobile section -->

    <section class="main hidden-xs">
      <div class="container-fluid">
        <div class="row">
          <div class="col-xs-10">
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

    <a href="https://banners.livepartners.com/click.php?p=124&l=de&source=landing&bid2land=2&id=&t=register" rel="nofollow">
      <section class="steps-m">
      	<div class="container-fluid">
      		<div class="row visible-xs">
      			<div class="text-center">
          			<h3></h3>
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
  					<p>

  						  	<a  href="https://help.netbet.com/{$lang}/casino/conditions" target="blank"  class="text-muted">
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
    <section id="footer" class="bg-darkgrey">
      <div class="container">
          {include file="lab/organisms/footer/footer-main.tpl"
          responsible_text_header=#responsible_text_header#
          payment_text_header=#payment_text_header#
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
  {/block}

  {block name=footer}

  <script src="/src/js/remodal.min.js"></script>
  <script type="text/javascript">
    $(function(){
        {if $countryCode == 'CHE'}
          $("#modal1Desc").load("{$asset}/che/{$lang}/terms.html");
        {elseif $countryCode == 'IRL'}
          $("#modal1Desc").load("{$asset}/ie/terms.html");
        {else}
          $("#modal1Desc").load("{$asset}/{$lang}/terms.html");
        {/if}
    });
    $('footer div').removeClass('container-fluid');
    $('footer div').addClass('container');
  </script>
	<script>
		function animate() {
		   $(".20sec").toggleClass("bounce");
		   setTimeout(animate, 2000);
		}
		animate();
	</script>

  {/block}
