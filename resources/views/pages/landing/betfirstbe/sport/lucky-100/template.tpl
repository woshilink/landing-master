{extends file="base/base.tpl"}
{assign "lang_dropdown"  true}
{$languages = ['en' => 'English','nl' => 'Nederlands','fr' => 'Français']}
{block name=title}{$name} {$title}{/block}
{block name=head}
    <link href="{$asset}/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">
    <style>
        @font-face {
            font-family: Hallo;
            src: url("src/fonts/Hallo sans black.otf");
        }
        .main {
            background-image: url('{$asset}/bg.jpg');
        }
        .offscreen{
            position: absolute;
            margin-top: -5000px;
        }
        .dropdown button{
          font-size: 12px;
        }
        .lang-selector {
          background: transparent;
          margin-top: 30px;
        }
        .btn.focus, .btn:focus, .btn:hover {
          color: inherit;
        }
        .boxes{
            padding-bottom: 30px;
        }

    </style>
{/block}

{block name=body}
{assign "lpconf" "{$smarty.current_dir}/{$lang}/lp.conf"}
{config_load file=$lpconf}
  <nav class="navbar">
    <div class="container">
        {include file="lab/organisms/nav/nav-main.tpl"}
    </div>
  </nav>
  <a href="{$cta.sport}" rel="nofollow">
    <section class="mobile visible-xs">
    	<div class="container">
    		<div class="row">
    			<div class="col-xs-12">
    					<img src="{$asset}/{$lang}/mobile.png" class="img-responsive  " alt="">
    			</div>
    		</div>
    	</div>
    </section>
    <!-- end of mobile  -->
    <section class="main hidden-xs">
      <div class="container-fluid">
        <div class="row">
          <div class="col-xs-10 col-sm-6 pull-right">
            <div class="offer clearfix" >
              <img src="{$asset}/{$lang}/offer.png" class="img-responsive pull-right " alt="">
            </div>
          </div>
        </div>
      </div>
    </section>
  </a>
    <!-- end of main section -->
  <a href="{$cta.sport}" rel="nofollow">
    <section class="steps">
    	<div class="container-fluid">
    		 <div class="row">
          	<div class="col-xs-12 hidden-xs steps-desktop">
              	<img src="{$asset}/{$lang}/steps.png" alt="" class="img-responsive center-block">
          	</div>
     	   </div>
      </div>
     	 <!-- End of steps desktop -->
     	 <div class="row">
          	<div class="col-xs-12 visible-xs steps-m">
              	<img src="{$asset}/{$lang}/steps_mobile.png" alt="" class="img-responsive center-block">
          	</div>
     	 </div>
    </section>
  </a>
    <!-- end of steps section -->
 <a href="{$cta.sport}" rel="nofollow">
 <section class="boxes">
    	<div class="container-fluid">
    		<div class="row text-center">
    		 	<h2 class="plus"><i>+</i></h2>
    		 	<h3 class="info-text"><i>{#info#}<span>:</span></i></h3>
    		 	<div class="col-xs-12 col-sm-6 box">
	          <img src="{$asset}/{$lang}/box1.jpg" class="img-responsive center-block" />
	         </div>
	         <div class="col-xs-12 col-sm-6 box">
	           <img src="{$asset}/{$lang}/box2.jpg" class="img-responsive center-block" />
	         </div>
     	   </div>
    	</div>
  </section>
  </a>
      <!-- End of images box  -->
  <section id="footer" class="bg-darkgrey">
    <section id="terms" class="bg-darkgrey">
        <div class="container">
          <div class="row terms container">
            <div class="col-xs-11 hidden-xs container">
              <br>
              <p class="pull-left hidden-xs terms">
                <span class="text-muted">{#terms#}</span>
              </p>
              <br>
            </div>
          </div>
        </div>
      </section>
    <div class="container">
        {include file="lab/organisms/footer/footer-main.tpl"}
    </div>
  </section>
{/block}

{block name=footer}
    <script src="src/js/remodal.min.js"></script>
    <script>
        $(function(){
            // $("#modal1Desc").load("{$lang}/terms.html");
        });
    </script>
{/block}
