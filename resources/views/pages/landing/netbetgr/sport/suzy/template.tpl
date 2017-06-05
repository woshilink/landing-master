
    {extends file="base/netbet-base.tpl"}
    {block name=title}{$title}{/block}

    {block name=head}
        <link href="/lp-asset/netbetgr/sport/suzy/styles.css" rel="stylesheet">
        <link href="/src/css/main.css" rel="stylesheet">

          <style>

            .main {
              background-image: url('/lp-asset/netbetgr/sport/suzy/img/bg.jpg');
            }

          </style>
    {/block}

    {block name=body}

    <nav class="navbar">
      <div class="container-fluid">
        <div class="row">
          <div id="logo" class="col-xs-6 col-sm-4 ">
            <a href="{$url}" rel="nofollow">
              <img src="src/img/logo.png" alt="NetBet" class="pull-left img-responsive" >
            </a>
          </div>
          <div class="col-xs-4 text-center hidden-xs custom-text">
            <h4 style="color: white;">{$text}</h4>
          </div>
          <!-- Co logo -->
          {if $co_logo}
          <div class="col-xs-6 col-sm-4 co-logo">
            <img src="{$co_logo}" class="img-responsive center-block" alt="">
          </div>
          <!-- end of co logo -->
          {/if}

        </div>
      </div>
    </nav>
    <!-- end of NAV -->

    <a href="{$url}" rel="nofollow">
    <section class="mobile visible-xs">
      <img src="/lp-asset/netbetgr/sport/suzy/img/mobile.jpg" alt="" class="img-responsive center-block">
       <div class="button text-center">

<!--             	<div  class="CTA-button center-block ">BET NOW</div>-->

         </div>
    </section>
    <section class="main hidden-xs">
      <div class="container-fluid">
        <div class="row">
          <div class="col-xs-5 col-sm-5 col-md-5 col-lg-5  pull-right">
            <div class="box">
              <div class="offer " >
                  <img src="/lp-asset/netbetgr/sport/suzy/img/offer.png" alt="" class="img-responsive center-block">

              </div>
              <!-- end of offer row -->

                <div class="button text-center">

                 <!--	<div  class="CTA-button center-block">BET NOW</div>-->

              </div>
               <!-- end of button row -->
            </div>

          </div>
        </div>

      </div>
    <!-- end of main container -->

    </section>
    </a>
    <!-- end of main section -->

    <a href="{$url}" rel="nofollow">
      <section class="steps">
        <div class="container-fluid">
          <div class="row visible-xs">
            <div class="text-center">
                <h3>{$text}</h3>
            </div>
          </div>
           <div class="row">
              <div class="col-xs-12 hidden-xs">
                  <img src="/lp-asset/netbetgr/sport/suzy/img/steps.jpg" alt="" class="img-responsive center-block">
              </div>
          </div>
          <!-- end of lage screen steps -->

          <div class="row">
              <div class="col-xs-12 visible-xs">
                  <img src="/lp-asset/netbetgr/sport/suzy/img/steps_mobile.jpg" alt="" class="img-responsive center-block">
              </div>
          </div>
           <!-- end of small sreen steps -->
        </div>

      </section>
    </a>
    <!-- end of steps section -->

   <footer id="footer">
       <div class="container-fluid">
           <div class="col-xs-12">
               <div >
                   {include
                     file="lab/organisms/footer/footer-main.tpl"
                     responsible_text_header=$content.responsible_text_header
                     payment_text_header=$content.payment_text_header
                     payment_methods=$content.payment_methods
                     responsibles=$content.responsibles
                   }
               </div>
           </div>
       </div>
   </footer>
  
    {/block}

    {block name=footer}
    <script src="esport/src/js/remodal.min.js"></script>
     <script>
      $(function(){

          $("#modal1Desc").load("suzy/{$lp}/terms.html");

      });
      $('.terms').css('display', 'none');
    </script>
    {/block}
