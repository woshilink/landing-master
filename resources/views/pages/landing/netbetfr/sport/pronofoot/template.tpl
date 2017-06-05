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
      background-size: cover;
      background-position: top;
      height: 720px;
    }
    .logo{
        color: #fff;
    }

    @media only screen and (max-width : 767px) {
      .main{
            height: auto;
      }
      .offer img {
        margin-top: 0px;
      }
    }
  </style>

{/block}

{block name=body}

  <section class="main">

    <div class="container-fluid">
        {include file="lab/organisms/nav/nav-main.tpl" }
          <div class="row">
            <div class="col-xs-12 col-sm-9">
                 <div class="offer" >
                     <img src="{$asset}/img/offer.png"  class="img-responsive center-block hidden-xs">
                     <img src="{$asset}/img/offer-mobile.png"  class="img-responsive center-block visible-xs">
                 </div>
                  <!-- end of offer row -->
             </div>
             <!-- end off the offer -->
             {assign "bonuscode" "PRONOFOOT"}
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
      <div class="row clearfix">

      <div class="col-xs-12 col-sm-9">

          <div class="row hidden-xs">
            <div class="col-xs-12">
              <img src="{$asset}/img/steps.png"  class="img-responsive center-block" style="margin-bottom: 0.5em;">
            </div>
          </div>
          <div class="row visible-xs">
            <div class=" col-xs-12 text-center" style="font-size: 16px; margin-bottom: 12px;">

              <a style="color:#fff;font-size:0.7em;text-decoration:underline;" href="http://www.livepartners.fr/affiliate/tracking/click/?p=5&l=fr&id=&t=promotion&id={$id}{$postfix}" target="_blank" rel="nofollow">
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

          <a style="color:#fff;font-size:0.7em;text-decoration:underline;" href="http://www.livepartners.fr/affiliate/tracking/click/?p=5&l=fr&id=&t=promotion&id={$id}{$postfix}" target="_blank" rel="nofollow">
            *Conditions
          </a>
        </div>
        <!-- Terms desktop-->
      </div>
  </div>
         <!-- end of  steps -->
    </div>
  <!-- end of main container -->


      <a href="{$cta.sport}" rel="nofollow">
          <section class="infoboxes">

              <div class="container-fluid hidden-xs">
                  <div class="row" style="margin-top:1em; margin-bottom:1em;">
                      <a href="{$cta.sport}" rel="nofollow">

                          <div class="col-xs-12 col-sm-4">
                              <img src="lp-asset/netbetfr/img/step1.png" alt="Vivez les émotions du direct en pariant jusqu'à la dernière minute !" class="img-fill center-block" style="max-width:312px;">
                          </div>
                          <div class="col-xs-12 col-sm-4">
                              <img src="lp-asset/netbetfr/img/step2.png" alt="Ne manquez plus jamais un match !" class="img-fill center-block" style="max-width:312px;">
                          </div>
                          <div class="col-xs-12 col-sm-4">
                              <img src="lp-asset/netbetfr/img/step3.png" alt="Profitez des conseils d'un pro du football !" class="img-fill center-block" style="max-width:312px;">
                          </div>

                      </a>
                  </div>
              </div>

          </section>
      </a>
  </section>

    <section id="footer">
        <div class="container-fluid">
            {include file="lab/organisms/footer/footer-main.tpl"}
        </div>
    </section>
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script>
     $(function(){
       $("#modal1Desc").load("terms.html");
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
