{extends file="base/base.tpl"}
{block name=title}{$brand|capitalize} {$product|capitalize}{/block}
{block name=head}

  <link href="{$asset}/styles.css" rel="stylesheet">
  <link rel="stylesheet" href="src/css/remodal.css">
  <link rel="stylesheet" href="src/css/main.css">
  <link rel="stylesheet" href="src/css/remodal-default-theme.css">
  <style>
  .main {
    background-image: url('{$asset}/img/bg.jpg');
  }
  </style>

{/block}

{block name=body}
    <div class="container text-center">
        <p style="color: white">{$legal_text}</p>
    </div>

    <section id="main-nav">
        <nav class="navbar black-transparent ">
            <div class="container-fluid">
                {include file="lab/organisms/nav/nav-main.tpl" }
            </div>
        </nav>
    </section>
  <section class="main">
    <div class="container-fluid">
          <div class="row">
            <div class="col-xs-12 col-sm-9">
                 <div class="offer" >
                     <img src="{$asset}/img/offer.png"  class="img-responsive center-block hidden-xs">
                     <img src="{$asset}/img/offer-mobile.png"  class="img-responsive center-block visible-xs">
                 </div>
                  <!-- end of offer row -->
             </div>
             <!-- end off the offer -->
             {assign "bonuscode" "P2L100"}
            <div class="col-xs-12 col-sm-3">
                {include file="pages/landing/netbetfr/partials/form/register.tpl"}
            </div>
             <!-- End of reg form -->
          </div>



      <div class="row visible-xs">
        <div class="col-xs-12">
           <div class="button">
          <a href="{$cta.sport}" class="button1">
            <img src="{$asset}/img/button.png" alt="Rejoignez-nous!" class="img-responsive center-block" >
            </a>
          </div>
        </div>
           <!-- end of button row -->
      </div>


      <div class="steps-section">
            <div class="row clearfix">
                <div class="col-xs-12 col-sm-9">

                    <div class="row hidden-xs">
                      <div class="col-xs-12 col-sm-4">
                          <img src="{$asset}/img/1.png"  class="img-responsive center-block" style="margin-bottom: 0.5em;">
                      </div>
                      <div class="col-xs-12 col-sm-4">
                          <img src="{$asset}/img/2.png"  class="img-responsive center-block" style="margin-bottom: 0.5em;">
                      </div>
                      <div class="col-xs-12 col-sm-4">
                          <img src="{$asset}/img/3.png"  class="img-responsive center-block" style="margin-bottom: 0.5em;">
                      </div>
                    </div>
                    <div class="row visible-xs">
                      <div class=" col-xs-12 text-center" style="font-size: 16px; margin-bottom: 12px;">

                        <a style="color:#fff;font-size:0.7em;text-decoration:underline;" href="http://www.livepartners.fr/affiliate/tracking/click/?p=5&l=fr&id=&t=promotion&id={$id}{$postfix}"  rel="nofollow">
                          *Conditions
                        </a>
                      </div>
                      <!-- Terms desktop-->
                    </div>
                    <div class="row visible-xs">
                      <div class="col-xs-12 col-sm-4">
                          <img src="{$asset}/img/1.png"  class="img-responsive center-block" style="margin-bottom: 0.5em;">
                      </div>
                      <div class="col-xs-12 col-sm-4">
                          <img src="{$asset}/img/2.png"  class="img-responsive center-block" style="margin-bottom: 0.5em;">
                      </div>
                      <div class="col-xs-12 col-sm-4">
                          <img src="{$asset}/img/3.png"  class="img-responsive center-block" style="margin-bottom: 0.5em;">
                      </div>
                    </div>

                </div>
                <!--  End if steps -->
            <div class="col-xs-3 hidden-xs ">
              <a href="{$cta.sport}" class="button1 ">
                <img src="{$asset}/img/button.png"  class="img-responsive center-block" style="margin-top: 1.1em;">
              </a>
              <div class=" col-xs-4 pull-right" >

                <a style="color:#fff;font-size:0.7em;text-decoration:underline;" href="http://www.livepartners.fr/affiliate/tracking/click/?p=5&l=fr&id=&t=promotion&id={$id}{$postfix}"  rel="nofollow">
                  *Conditions
                </a>
              </div>
              <!-- Terms desktop-->
            </div>
        </div>
               <!-- end of  steps -->
      </div>

    </div>
  <!-- end of main container -->


  </div>
  </section>
    <section id="footer">
        <div class="container">
            {include file="lab/organisms/footer/footer-main.tpl"}
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
    		<!-- end of modal pop up -->

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="landing/jen6/src/js/bootstrap.min.js"></script>
        <script src="landing/jen6/src/js/remodal.min.js"></script>

  <script>
  $(function(){

      $("#modal1Desc").load("{$asset}/terms.html");

  });
  $(".promo img").attr('src', '{$asset}/responsive-logo.png');


     $('.button1').click(function(){
        var val1 = $('[name="fname"]' ).val();
        var val2 = $('[name="lname"]' ).val();
        var val3 = $('[name="email"]' ).val();
        var allpara = '&fname='+val1+'&lname='+val2+'&email='+val3+'&bonuscode={$bonuscode}{$postfix}';
        var _href = $(this).attr("href");
        $(this).attr('href', _href + allpara );

   });
 </script>
{/block}
