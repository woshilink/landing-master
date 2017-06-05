{extends file="base/base.tpl"}

{assign "lang_dropdown"  true}
{$languages = ['en' => 'English','nl' => 'Nederlands','fr' => 'Français']}


{block name=title}This is
{/block}
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
        .boxes{
            padding-bottom: 30px;
        }
        button img{
          max-width: 100px;
        }
        #logo {
            margin: 10px 0;
        }
        .lang-selector{
          margin-top: 18px;
        }
        button img, .dropdown-menu img{
          max-width: 30px;
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
    <!-- end of NAV -->

    <section class="mobile">
     	 <a href="{$cta.casino}" rel="nofollow">
  	   	<div class="container-fluid">
  	   		 <div class="row visible-xs">
  	         <div class="col-xs-12">
  	           <img src="{$asset}/{$lang}/mobile.jpg" class="img-responsive center-block" classalt="Mobile background">
  	           <p class="text-center" style="font-size: 20px; color:  white;">{#bonus#}</p>
  		         <div class="button">
  	             <img src="{$asset}/{$lang}/button.png" class="img-responsive center-block" classalt="Mobile background">
  	           </div>
  	         </div>
  	       </div>
  	       <!-- end of mobile background -->
  	   	</div>
     	</a>
     </section>
    <section class="main">
          <img src="{$asset}/{$lang}/banner.png" alt="" class="banner" />
      <div class="container">

         <div class="row">
           <div class="col-xs-5 hidden-xs pull-right">
             <div class="offer">
              <a href="{$cta.casino}" rel="nofollow">
               <img src="{$asset}/{$lang}/offer.png" class="img-responsive center-block" alt="">
              </a>
                <p class="text-center text-uppercase" style="font-size: 20px; color:  white;">{#bonus#}</p>
             </div>
             <!-- end of offer -->
           </div>
         </div>
          <!-- end of mobile text -->
      </div>
      <!-- end of container  -->
     </section>
     <!-- end of section -->


   	 <section class="steps">
        <div class="container">
          <div class="row">
            <div class="col-xs-12 hidden-xs">
              <img src="{$asset}/{$lang}/steps.png" alt="" class="img-responsive center-block">
            </div>
            <div class="col-xs-12 visible-xs">
              <img src="{$asset}/{$lang}/steps_mobile.png" alt="" class="img-responsive center-block">
            </div>
          </div>
          <!-- end of large screen steps -->

      <!-- end of steps row -->


      <section id="footer" class="bg-darkgrey">
          <section id="terms" class="bg-darkgrey">
              <div class="container">
                <div class="row terms container">
                    <div class="col-xs-11 hidden-xs container">
                      <br>
                      <a href="#modal">
                        <p class="pull-left hidden-xs terms">
                            <span class="text-muted">{#terms#}</span>
                        </p>
                      </a>
                      <br>
                    </div>
                </div>
              </div>
            </section>
          <div class="container">
              {include file="lab/organisms/footer/footer-main.tpl"}
          </div>
      </section>

      <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
        <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
        <div>
            {include file="pages/landing/{$domain}/terms/25spins/{$lang}/terms.html"}
        </div>
        <!-- loadind terms from terms from Jquery -->
        <br>
        <button data-remodal-action="confirm" class="remodal-confirm">OK</button>
    </div>


{/block}

{block name=footer}

    <script src="src/js/remodal.min.js"></script>

{/block}
