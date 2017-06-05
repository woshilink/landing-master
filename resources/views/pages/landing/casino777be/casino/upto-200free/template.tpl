{extends file="base/base.tpl"}



{block name=title}Casino 777
{/block}
{block name=head}

    <link href="{$asset}/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">

    <style>
    .main{
    background-image: url('{$asset}/bg.jpg');
  }
  header{
    background-color: rgba(110, 66, 115, 0.25);
  }
  .steps{
    display: none;
  }
  .game{
    display: none;
  }
  @media only screen and (max-width : 767px) {
      .main{

        background-image: none;
      }
      .navbar-fixed-top {
         position: inherit;
         }
    }

    </style>
{/block}
{block name=body}
{assign "lpconf" "{$smarty.current_dir}/{$lang}/lp.conf"}
{config_load file=$lpconf}
<header class="navbar-fixed-top">
     <div class="container">
       <nav class="navbar ">
            <div class="row">
              <div class="col-xs-6 col-sm-4  logo">

              <a href="{$cta.casino}" rel="nofollow">
              	                <img src="{$asset}/logo.png" class="img-responsive " alt="">
                              </a>
            </div>
            <!-- end of logo  -->
            <div class="col-xs-4 header-text text-center hidden-xs">
                <h3></h3>
            </div>
              <!--  end of text  -->
                      </div>
        </nav>
        <!-- end of nav Bar  -->
     </div>
   </header>

   <!-- end of header -->
  <section class="mobile visible-xs">
  	<div class="container-fluid">
  		<div class="row">
  			<div class="col-xs-12">
  				 <a href="{$cta.casino}" rel="nofollow">
  					<img src="{$asset}/{$lang}/mobile.jpg" class="img-responsive center-block" />
  				</a>
  			</div>
  		</div>
  		<!--  end of offer -->


  	</div>
  </section>
  <!-- End of mobile  -->
  <section class="main hidden-xs">
    <div class="container-fluid">
       <div class="row">
         <div class="col-xs-6 hidden-xs pull-right">
           <div class="offer">
            <a href="{$cta.casino}" rel="nofollow">
             <img src="{$asset}/{$lang}/offer.png" class="img-responsive center-block" alt="">
            </a>
           </div>
           <!-- end of offer -->
         </div>
       </div>
        <!-- end of mobile text -->
        <div class="steps-live">
	        <div class="row">
	          <div class="col-xs-12 hidden-xs">
	          	<a href="{$cta.casino}" rel="nofollow">
	            	<img src="{$asset}/{$lang}/steps.png" alt="" class="img-responsive center-block">
	           </a>
	          </div>
	        </div>
	       </div>
    </div>
    <!-- end of container  -->
   </section>
   <!-- end of section -->

    <!-- end of steps row -->
	<section class="terms">
		<div class="container">
			<a href="#modal">
				<p>{#terms#}</p>
			</a>
		</div>
	</section>

  <section class="steps">
      <div class="container">

        <div class="row">
          <div class="col-xs-12 hidden-xs">
            <img src="nl/img/steps.png" alt="" class="img-responsive center-block">
          </div>
        </div>
      </div>
  </section>
    <!-- end of steps row -->
  <section id="footer" class="bg-darkgrey">
    <div class="container">
      {include file="lab/organisms/footer/footer-main.tpl"}
    </div>
  </section>

  <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
      <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
      <div>
          {include file="pages/landing/{$domain}/terms/{$product}/upto-200freeplus50spins/{$lang}/terms.tpl"}
      </div>
      <!-- loadind terms from terms from Jquery -->
      <br>
      <button data-remodal-action="confirm" class="remodal-confirm">OK</button>
  </div>

{/block}

{block name=footer}
    <script src="src/js/remodal.min.js"></script>
    <script>
        $(function(){
            // $("#modal1Desc").load("{$lang}/terms.html");
        });
    </script>
{/block}
