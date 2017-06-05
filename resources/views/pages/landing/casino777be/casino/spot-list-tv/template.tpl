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
    header{
        background-image: url("{$asset}/bg.jpg");
        background-repeat:no-repeat;
        background-size:cover;
        height: 458px;
      }
      .lang-selector{
        position: absolute;
        top: 0;
        right: 0;
        width: 165px;
        height: 60px;
        background-color: rgba(015, 015, 015, 0.6);
        color: white;
      }
      .btn {
          background-color: rgba(015, 015, 015,0);
          color: white;
      }
      .lang-btn {
      margin-top: 10px;
      font-size: 18px;
       }
       .dropdown-menu li img, .dropdown button img {
        width: 20px;
      }
      .video{
        background-image: url('{$asset}/video.png');
        height: 265px;
        -webkit-background-size: 100% 108%;
        background-size: 100% 108%;
        background-repeat: no-repeat;
      }
      .video iframe {
          padding: 21px 22px;
          margin-top: 8px;
      }
      .goldline{
        background-image: url("{$asset}/goldline.png");
      }
      .man {
          width: 245px;
          margin-top: -660px;
          height: 666px;
      }
      .button {
          margin-top: -355px;
      }
    </style>
{/block}
{block name=body}
{assign "lpconf" "{$smarty.current_dir}/{$lang}/lp.conf"}
{config_load file=$lpconf}
<header>

        <div class="container">
          <nav class="navbar hidden-xs">
           <a href="{$cta.casino}" rel="nofollow">
            <div class="row">
              <div class="col-xs-4 col-xs-offset-3 logo">
                <img src="{$asset}/logo.png" class="img-responsive" alt="">
            </div>
          </div>
          </a>
        </nav>
        <!-- end of nav Bar  -->
        <article>
          <div class="row visible-xs">
            <img src="{$asset}/bg-mobile.jpg" alt="" class="img-responsive">
          </div>
          <div class="row clearfix">
            <div class="col-xs-12 col-sm-6 col-md-5 col-sm-offset-3 video">
              <iframe width="100%" height="100%" src="https://www.youtube.com/embed/4zhxnWDlVUk" frameborder="0" allowfullscreen=""></iframe>
            </div>
          </div>
        </article>
        <!--  End of article -->
      </div>
      <!-- end of container  -->
      <div class="lang-selector">
          <div class="dropdown">
                         <button class="btn lang-btn dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
               <span><img src="{$asset}/nl.png" alt="Natherland"></span> Nederlands
              <span class="caret"></span>
            </button>
            <!-- end of button -->

          <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
            <li>
              <a href="https://gov2.casino777.be/casino?lp=spot-list-tv&lang=fr" rel="nofollow">
                <span><img src="{$asset}/fr.png" alt="France"></span> Français
              </a>
            </li>
             <!-- end of FR lang -->
          </ul>
          <!-- /////////////////////////////end of list  ////////////////////////////////////////////-->
                    </div>
      </div>
    </header>
    <div class="goldline"></div>

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
         <article>
           <div class="row hidden-xs">
             <div class="col-xs-12   steps">
               <a href="{$cta.casino}" rel="nofollow">
                <img src="{$asset}/{$lang}/box.png"  class="img-responsive center-block" alt="">
 			         </a>
             </div>
           </div>
           <div class="row visible-xs">
             <div class="col-xs-12  steps-mobile">
               <a href="{$cta.casino}" rel="nofollow">
                <img src="{$asset}/{$lang}/box-mobile.png"  class="img-responsive center-block" alt="">
 			         </a>
             </div>
           </div>
           <div class="row">
             <div class="col-xs-3 col-lg-offset-1 hidden-xs man">
              <a href="{$cta.casino}" rel="nofollow">
               	<img src="{$asset}/man.png" class="img-responsive"alt="">
              </a>
             </div>
             <!-- end of man -->
             <div class="col-xs-3  col-sm-offset-8 col-md-offset-5 col-lg-offset-4 hidden-xs button">
             	 <a href="{$cta.casino}" rel="nofollow">
               		<img src="{$asset}/{$lang}/button.png" class="img-responsive" alt="Sign up button">
             	</a>
             </div>
             <!-- end of button destop -->
             <div class="col-xs-12 visible-xs button-mobile">
              <a href="{$cta.casino}" rel="nofollow">
               <img src="{$asset}/{$lang}/button.png" class="center-block img-responsive" alt="Sign up button">
              </a>
             </div>
             <!-- end of button mobile -->
           </div>
         </article>
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
