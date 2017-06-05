{extends file="layout.tpl"}
{block name=title}{$name} {$title}{/block}
{block name=head}
  <link rel="icon" type="image/png" href="favicon.ico">
  <!-- Bootstrap -->
  <link href="landing/jen6/src/css/bootstrap.min.css" rel="stylesheet">
  <link href="landing/jen6/src/css/styles.css" rel="stylesheet">
  <link rel="stylesheet" href="landing/jen6/src/css/remodal.css">
  <link rel="stylesheet" href="landing/jen6/src/css/remodal-default-theme.css">
  <style>
    .main {
      background-image: url('../template/templates/sport/{$lp}/img/bg.jpg');
      background-size: cover;
      background-position: top;
      height: 470px;
    }
    @media only screen and (max-width : 767px) {
      .main{
            height: auto;
      }
    }
  </style>

  {include file="all_head.tpl" }
{/block}

{block name=body}
<div class="container text-center">
  {include file="partial/text/licence.tpl" }
</div>
{include file="partial/nav/_nav.tpl" name='../template/templates/sport'}
  <section class="main">
    <div class="container-fluid">
           <div class="col-xs-12 col-sm-9">
                <div class="offer" >
                    <img src="../template/templates/sport/{$lp}/img/offer.png"  class="img-responsive center-block hidden-xs">
                    <img src="../template/templates/sport/{$lp}/img/offer-mobile.png"  class="img-responsive center-block visible-xs">
                </div>
                 <!-- end of offer row -->
            </div>

         <!-- end off the offer -->
         {assign "bonuscode" "RZVIP"}
        <div class="col-xs-12 col-sm-3">
            {include file="partial/form/_register.tpl" bonuscode=$bonuscode}
        </div>
         <!-- End of reg form -->

      <div class="row visible-xs">
        <div class="col-xs-12">
           <div class="button">
          <a href="{$url}" class="button1">
            <img src="../template/templates/sport/{$lp}/img/button.png" alt="Rejoignez-nous!" class="img-fill" >
            </a>
          </div>
        </div>
           <!-- end of button row -->
      </div>
      <div class="row clearfix">



      <div class="col-xs-12 col-sm-9">

          <div class="row hidden-xs">
            <div class="col-xs-12">
              <img src="../template/templates/sport/{$lp}/img/steps.png"  class="img-responsive center-block" style="margin-bottom: 0.5em;">
            </div>
          </div>

          <div class="row visible-xs">
            <div class="col-xs-12 col-sm-4">
                <img src="../template/templates/sport/{$lp}/img/1.png"  class="img-responsive center-block" style="margin-bottom: 0.5em;">
            </div>
            <div class="col-xs-12 col-sm-4">
                <img src="../template/templates/sport/{$lp}/img/2.png"  class="img-responsive center-block" style="margin-bottom: 0.5em;">
            </div>
            <div class="col-xs-12 col-sm-4">
                <img src="../template/templates/sport/{$lp}/img/3.png"  class="img-responsive center-block" style="margin-bottom: 0.5em;">
            </div>
          </div>

      </div>
      <!--  End if steps -->
      <div class="col-xs-3 hidden-xs">
        <a href="{$url}" class="button1">
          <img src="../template/templates/sport/{$lp}/img/button.png"  class="img-responsive center-block" style="margin-top: 1.1em;">
        </a>
        <div class="hidden-xs pull-right" >

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
  <a href="{$url}" rel="nofollow">
      <section class="infoboxes">

         <div class="container-fluid hidden-xs">
            {assign "img_path" "sport_fr/"}
            {include file="partial/box/infobox.tpl" }
         </div>

       </section>
    </a>
  {include file="footer_v1.tpl" }
  </div>
  </section>
  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script>
     $(function(){
       $("#modal1Desc").load("terms.html");
     });


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
