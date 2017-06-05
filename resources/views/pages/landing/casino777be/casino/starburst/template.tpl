{extends file="base/base.tpl"}


{block name=title}Casino 777
{/block}
{block name=head}

    <link href="{$asset}/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">

    <style>
        hr{
            border-top: 1px solid #000;
        }
        @font-face {
            font-family: Hallo;
            src: url("src/fonts/Hallo sans black.otf");
        }
        .main {
            background-image: url('{$asset}/bg.jpg');
        }
        .frame video {
            padding: 8%;
        }
        .offscreen{
            position: absolute;
            margin-top: -5000px;
        }
        .offer {
            margin-top: 175px;
        }
        .offer img {
            width: 265px;
        }
        .boxes{
            padding-bottom: 30px;
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
        .frame{
        	margin-top: 85px;
        	background-image: url('{$asset}/frame.png');
        	-webkit-background-size: contain;
        	background-position: center;
            background-repeat: no-repeat;
            background-size: contain;
        }
            @media only screen and (max-width : 768px){
              .container {
                 padding: 0;
             }
              .frame{
                margin-top: 0px;
                margin-left: 0;
                background-size: 103%;
             }
             .main {
                 background-image: none;
             }
             .row >col-*{
               padding:0;
             }
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
  		         <div class="button hidden-xs">
  	             <img src="{$asset}/{$lang}/button.png" class="img-responsive center-block" classalt="Mobile background">
  	           </div>
  	         </div>
  	       </div>
  	       <!-- end of mobile background -->
  	   	</div>
     	</a>
     </section>
     <section class="main">
         <div class="container">
            <div class="row visible-xs">
              <div class="col-xs-12">
                <img src="{$asset}/{$lang}/bg-mobile.png" class="img-responsive center-block" classalt="Mobile background">
              </div>
            </div>
            <!-- end of mobile background -->
            <div class="row">
              <div class="col-xs-4 hidden-xs">
                <div class="offer">
                 <a href="{$cta.casino}" rel="nofollow">
                  <img src="{$asset}/{$lang}/offer.png" class="img-responsive center-block" alt="">
                 </a>
                </div>
                <!-- end of offer -->
                <div class="button">
                 <a href="{$cta.casino}" rel="nofollow">
                   <img src="{$asset}/{$lang}/button.png" alt="" class="img-responsive center-block">
                 </a>
                </div>
              </div>
              <div class="col-xs-12 col-sm-6 col-md-5 col-sm-offset-2 frame">
                <video width="100%" height="100%"  controls autoplay muted>
                   <source src="{$asset}/video.mp4" type="video/mp4">
                 </video>
              </div>
            </div>
             <div class="row" >

               <div class="col-xs-12 header-text text-center visible-xs">
                 <h3></h3>
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
                   <a href="{$cta.casino}">
                 <img src="{$asset}/{$lang}/steps.png" alt="" class="img-responsive center-block">
                   </a>
               </div>
             </div>
             <!-- end of large screen steps -->
             <div class="row">
               <div class="col-xs-12 visible-xs">

                 <a href="{$cta.casino}" rel="nofollow">
                   <div id="step1" class="step">
                     <div class="row">
                       <div class="col-xs-2 step-num">
                         <p>1</p>
                       </div>
                       <div class="col-xs-10 text-left">
                         <div class="step-title">
                           {#signup#}
                         </div>
                         <div class="step-text">
                           {#freeandeasy#}
                         </div>
                       </div>
                     </div>
                   </div>
                   <div id="step2" class="step">
                     <div class="row">
                       <div class="col-xs-2 step-num">
                         <p>2</p>
                       </div>
                       <div class="col-xs-10 text-left">
                         <div class="step-text">
                           {#claimyour#}
                         </div>
                         <div class="step-title">
                           {#bonus#}
                         </div>
                       </div>
                     </div>
                   </div>
                   <div id="step3" class="step">
                     <div class="row">
                       <div class="col-xs-2 step-num">
                         <p>3</p>
                       </div>
                       <div class="col-xs-10 text-left">
                         <div class="step-title">
                          {#play#}
                         </div>
                         <div class="step-text">
                         {#andwin#}
                         </div>
                       </div>
                     </div>
                   </div>
                 </a>
               </div>
             </div>
             </div>
             <!-- end of small screen steps -->
           </div>
         </section>

    <div class="container">
      <div id="games" class="row">
         <div class="col-xs-12 col-sm-4 game">
           <a href="{$cta.casino}">
             <img src="{$asset}/{$lang}/1.png" alt="100s of games" class="img-responsive center-block" >
           </a>
         </div>
         <div class="col-xs-12 col-sm-4 game">
           <a href="{$cta.casino}">
             <div class="visible-xs ">
               <img src="{$asset}/{$lang}/2.png" alt="Mobile casino" class="img-responsive center-block" >
             </div>
             <div class="hidden-xs center-block" style="width:98.2%;">
               <img src="{$asset}/{$lang}/2.png" alt="Mobile casino" class="img-responsive" >
             </div>
           </a>
         </div>
         <div class="col-xs-12 col-sm-4 game">
           <a href="{$cta.casino}">
             <div class="visible-xs" style="width:96.1%;">
               <img src="{$asset}/{$lang}/3.png" alt="Live dealers" class="img-responsive center-block" >
             </div>
             <div class="hidden-xs pull-right" style="width:96.1%;">
               <img src="{$asset}/{$lang}/3.png" alt="Live dealers" class="img-responsive" >
             </div>
           </a>
         </div>
     </div>
   </div>
    <section id="legal" style="margin-top: 20px;">
        <div class="container">
            <div class="row">
                <col-xs-12>
                    <p class="footer-blurb text-center text-muted">
                        {#legaltext#}
                    </p>
                </col-xs-12>
            </div>
            <hr>
        </div>
    </section>
      <section id="footer" class="bg-darkgrey">
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
