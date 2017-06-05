{extends file="layout.tpl"}
{block name=title}{$name} {$title}{/block}
{block name=head}
  <link rel="icon" type="image/png" href="favicon.ico">
  <!-- Bootstrap -->
  <link href="landing/jen6/src/css/bootstrap.min.css" rel="stylesheet">
  <link href="../template/templates/sport/{$lp}/styles.css" rel="stylesheet">
  <link rel="stylesheet" href="landing/jen6/src/css/remodal.css">
  <link rel="stylesheet" href="landing/jen6/src/css/remodal-default-theme.css">
  <style>
    .main {
      background-image: url('../template/templates/sport/{$lp}/img/bg.jpg');
      background-size: cover;
      background-position: bottom;
    }

    @media only screen and (max-width : 767px) {
      .main{
            height: auto;
      }
      .offer img {
        margin-top: 0;
      }
    }
  </style>

  {include file="all_head.tpl" }
{/block}

{block name=body}
    <section class="container-fluid">
        {include file="partial/text/licence.tpl"}
    </section>


    <section class="main">
        <nav class="navbar">
            <div class="container-fluid">
                <div class="row">
                    <div id="logo" class="col-xs-6 col-sm-3 ">
                        <a href="http://www.livepartners.fr/affiliate/tracking/click/?p=5&amp;l=fr&amp;lp=booskap&amp;mode=dev&amp;bid2land=10&amp;id=&amp;t=register" rel="nofollow">
                            <img src="img/logo.png" alt="NetBet" class=" img-responsive">

                        </a>
                    </div>
                    <div class="col-xs-12 col-sm-2 hidden-xs">
                        <a href="http://www.livepartners.fr/affiliate/tracking/click/?p=5&amp;l=fr&amp;lp=booskap&amp;mode=dev&amp;bid2land=10&amp;id=&amp;t=register" rel="nofollow">
                            <img src="img/social.png" alt="NetBet" class="logo-social img-responsive hidden-xs">
                        </a>
                    </div>
                    <div class="col-xs-12 col-sm-4 text-center promo hidden-xs">
                        <img src="../template/templates/sport/booskap/img/logo.png" alt="NetBetSport.fr" class="img-responsive hidden-xs">
                    </div>

                    <!-- Co logo -->
                    <div class="col-xs-6 col-sm-3 logo">
                        <p class="text-center hidden-xs">NOS PARTENAIRES</p>
                        <img src="img/sup-logo.png" class="img-responsive center-block" alt="">
                    </div>
                    <!-- end of co logo -->
                </div>
            </div>
        </nav>
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-4 hidden-xs hidden-sm">
                    <div class="alex">
                        <img src="../template/templates/sport/{$lp}/img/AlexRuiz.png"  class="img-responsive center-block">
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-8">

                    <div class="row">
                        <div class="col-xs-12 col-sm-7 col-md-8">

                            <img src="../template/templates/sport/booskap/img/logo.png" alt="NetBetSport.fr" class="img-responsive visible-xs center-block">

                            <div class="offer" >
                                <img src="../template/templates/sport/{$lp}/img/offer.png"  class="img-responsive center-block">

                            </div>
                            <!-- end of offer row -->
                        </div>
                        {assign "bonuscode" "BOOSKAP"}
                        <div class="col-xs-12 col-sm-4 col-md-4 ">
                            <h2 class="text-center bonus hidden-xs">CODE: <span>BOOSKAP</span></h2>
                            {include file="partial/form/_register.tpl" bonuscode=$bonuscode}
                            <div class="button">
                                <a href="{$url}" class="button1">
                                    <img src="../template/templates/sport/{$lp}/img/button.png" alt="Rejoignez-nous!" class="img-responsive center-block" >
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="row clearfix">

                        <div class="col-xs-12">
                            <div class="row visible-xs">
                                <div class=" col-xs-12 text-center" style="font-size: 16px; margin-bottom: 12px;">

                                    <a style="color:#fff;font-size:0.7em;text-decoration:underline;" href="http://www.livepartners.fr/affiliate/tracking/click/?p=5&l=fr&id=&t=promotion&id={$id}{$postfix}" target="_blank" rel="nofollow">
                                        *Conditions
                                    </a>
                                </div>
                                <!-- Terms desktop-->
                            </div>
                        </div>
                        <!--  End if steps -->
                    </div>
                    <div class="row">
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="upselling">
                                <img src="img/upselling.png"  class="img-responsive center-block">
                            </div>
                        </div>
                    </div>
                </div>


                <!-- End of reg form -->
            </div>
            {* End Of row *}

        </div>
        <!-- end of main container -->
    </section>
    {include file="footer_v1.tpl" }
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
