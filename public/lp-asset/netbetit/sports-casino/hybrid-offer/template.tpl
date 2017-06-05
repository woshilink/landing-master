{extends file="base.tpl"}
{block name=title}{$name} {$title}{/block}
{block name=head}
  <link rel="icon" type="image/png" href="favicon.ico">
  <!-- Bootstrap -->
  <link href="sports-casino/src/css/bootstrap.min.css" rel="stylesheet">
  <link href="../template/templates/sport-casino/{$lp}/app.css" rel="stylesheet">
  <link href="footer.css" rel="stylesheet">
  <link href="sports-casino/src/css/remodal.css" rel="stylesheet">
  <link href="sports-casino/src/css/remodal-default-theme.css" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Oswald:400,700,300" rel="stylesheet" type="text/css">
  <link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">

  <link href="footer.css" rel="stylesheet">
   <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries-->
   <!--if lt IE 9-->
   <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
   <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

  <style media="screen">
    #logo{
      padding: 10px;
    }
    .main {
         background-image: url('../template/templates/sport-casino/{$lp}/img/bg.jpg');
       }
       .offscreen{
 				position: absolute;
 				margin-top: -5000px;
 	   }
     .hybrid-text{
        font-family: 'Montserrat',sans-serif;
     }
 	  @media only screen and (max-width : 768px) {
 	  	.main {
         	background-image: none;
       	}
 	  	.offer-sec {
         	background-image: url('../template/templates/sport-casino/{$lp}/img/mobile.jpg');
         	background-size: cover;
       	}
 	  }
 	  @media only screen and (max-width : 480px) {
 	  	.main {
         	background-image: url('../template/templates/sport-casino/{$lp}/img/mobile.jpg');
         	background-size: initial;
     		background-position: bottom;
     		height: 400px;
       	}

       	.offer-sec {
         	background-image: none;
         	background-size: cover;
       	}
 	  }
  </style>
{/block}
{block name=body}
{$gtm}
<nav>
  <div class="container">
    {include file="partial/nav/_nav.tpl"}
  </div>
</nav>
<section class="main">
    <div class="container-fluid">

    </div>
  <!-- end of main container -->
  </section>
    <section class="offer-sec">
     <div class="container-fluid">
       <div class="row">
         <div class="col-xs-12 col-sm-6 col-sm-offset-3">
           <div class="hybrid-text text-center">
             <h3>
               BONUS BENVENUTO FINO A
             </h3>
           </div>
         </div>
       </div>
       <div class="row">
          <div class="col-xs-6 ">
           <div class="casino-offer">

             <div class="icon" >
                 <a href="{$url_casino}" rel="nofollow">
               {* <img src="../template/templates/sport-casino/{$lp}/img/casino_desk.png" class="img-responsive center-block hidden-xs" alt=""> *}
               <img src="../template/templates/sport-casino/{$lp}/img/casino_mobile.png" class="img-responsive center-block hidden-xxs" alt="">
               <img src="../template/templates/sport-casino/{$lp}/img/casino_desk.png" class="img-responsive center-block visible-xxs" alt="">
         </a>
             </div>


           </div>

         </div>
         <div class="col-xs-6 ">
           <div class="box">
             <div class="sport-offer" >
                <a href="{$url_sport}" rel="nofollow">
                 {* <img src="../template/templates/sport-casino/{$lp}/img/sport_desk.png" class="img-responsive center-block hidden-xs" alt=""> *}
                 <img src="../template/templates/sport-casino/{$lp}/img/sport_mobile.png" class="img-responsive center-block hidden-xxs" alt="">
                 <img src="../template/templates/sport-casino/{$lp}/img/sport_desk.png" class="img-responsive center-block visible-xxs" alt="">
                </a>
             </div>
             <!-- end of offer row -->
           </div>
         </div>
       </div>
     </div>
   <!-- end of main container -->

   </section>
    <!-- end of main section -->

  <section class="terms-new text-center">
    <div class="container">
      <div class="row" style="margin-bottom: 16px;">
          <a href="#modal" class="terms" style="text-align: center; color: #999999;">* Termini e Condizioni</a>
      </div>
    </div>
  </section>
  {include file="footer_sport.tpl"}
  {include file="partial/modal/_remodal.tpl"}
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="sports-casino/src/js/remodal.min.js"></script>
  <script type="text/javascript">


    $(function(){
       $("#modal1Desc").load("terms.html");
     });
    $('#footer > div').removeClass('container-fluid');
    $('#footer > div').addClass('container');
  </script>
{/block}
