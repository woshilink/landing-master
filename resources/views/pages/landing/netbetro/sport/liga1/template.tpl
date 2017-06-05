{extends file="base/base.tpl"}
{block name=title}{$name} {$title}{/block}
{block name=head}
  <!-- Bootstrap -->
  <link rel="icon" type="image/png" href="favicon.ico">
  <link href="src/css/bootstrap.min.css" rel="stylesheet">
  <link href="src/css/main.css" rel="stylesheet">
  <link href="{$asset}/styles.css" rel="stylesheet">
  <link rel="stylesheet" href="src/css/remodal.css">
  <link rel="stylesheet" href="src/css/remodal-default-theme.css">

  <style>
    .main {
      background-image: url('{$asset}/img/bg.jpg');
    }
    .offscreen{
      position: absolute;
      margin-top: -5000px;
    }


  </style>
{/block}
{block name=body}

    <section id="main-nav">
        <nav class="navbar black-transparent">
            <div class="container-fluid">
                {include file="lab/organisms/nav/nav-main.tpl" text=$text}
            </div>
        </nav>
    </section>
    <!-- end of NAV -->

    <a href="{$cta.sport}" rel="nofollow">

    <section class="main">
      <div class="container-fluid">
        <div class="row">
          <div class="col-xs-7 col-sm-5 col-md-5 col-lg-5  pull-right">
          	<div class="box">
            	<div class="offer " >
              		<img src="{$asset}/img/offer.png" alt="" class="img-responsive center-block">
            	</div>
             	<!-- end of offer row -->

          	</div>

          </div>
        </div>
        <div class="row">
          <div class="col-xs-12 col-sm-5 col-sm-offset-7 col-md-5 col-md-offset-7 col-lg-5">
            <div class="button text-center">
              <img src="{$asset}/img/button.png" alt="" class="img-responsive center-block">
            </div>
             <!-- end of button row -->
          </div>
        </div>
        <div class="row">
          <div class="icons hidden-sm hidden-xs">
            <div class="col-xs-12 col-sm-12 col-md-7 col-lg-7  pull-right">
              <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-3 payment-icon">
                    <img src="{$asset}/img/icon_payments.png" alt="" class="img-responsive center-block">
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 happy-icon">
                    <img src="{$asset}/img/icon_happy.png" alt="" class="img-responsive center-block">
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 live-icon">
                    <img src="{$asset}/img/icon_live.png" alt="" class="img-responsive center-block">
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 support-icon">
                    <img src="{$asset}/img/icon_support.png" alt="" class="img-responsive center-block">
                </div>
              </div>
            </div>
          </div>

        </div>

      </div>
    <!-- end of main container -->

    </section>
    </a>
    <!-- end of main section -->

    <section class="mobile">
      <div class="container-fluid">
        <div class="row">
          <div class="icons visible-sm visible-xs">
            <div class="col-xs-12">
              <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-3 payment-icon">
                    <img src="{$asset}/img/icon_payments.png" alt="" class="img-responsive center-block">
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 happy-icon">
                    <img src="{$asset}/img/icon_happy.png" alt="" class="img-responsive center-block">
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 live-icon">
                    <img src="{$asset}/img/icon_live.png" alt="" class="img-responsive center-block">
                </div>
                <div class="col-xs-6 col-sm-6 col-md-3 support-icon">
                    <img src="{$asset}/img/icon_support.png" alt="" class="img-responsive center-block">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
      <section class="steps">
      	<div class="container-fluid">
      		<div class="row visible-xs">
      			<div class="text-center">
          			<h3>{$text}</h3>
        		</div>
      		</div>
      		 <div class="row">
          		<div class="col-xs-12 col-sm-12 col-md-4">
                <a href="{$cta.sport}" rel="nofollow">
              		<img src="{$asset}/img/step1.png" alt="" class="img-responsive center-block">
                </a>
              </div>
              <div class="col-xs-12 col-sm-12 col-md-4">
                <a href="https://banners.livepartners.com/click.php?z=38627" rel="nofollow">
              		<img src="{$asset}/img/step2.png" alt="" class="img-responsive center-block">
          		</div>
              <div class="col-xs-12 col-sm-12 col-md-4">
                <a href="{$cta.sport}" rel="nofollow">
              		<img src="{$asset}/img/step3.png" alt="" class="img-responsive center-block">
                </a>
              </div>
        	</div>
        	<!-- end of lage screen steps -->

        	<div class="row">

        	</div>
       		 <!-- end of small sreen steps -->
      	</div>

      </section>

    <!-- end of steps section -->

    <section id="footer" class="bg-darkgrey">
        <div class="container-fluid">
            <div class="row terms">
                <div class="col-xs-11">
                    <br>
                    <p class="pull-left ">
                        *<a href="#modal" class="text-white">
                            <span>Termeni și condiții</span>

                        </a>
                    </p>

                    <br>

                </div>
            </div>
            {include file="lab/organisms/footer/footer-main.tpl"}
        </div>
    </section>

	<div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
    	<button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
    	<div>
      		{include file="{$smarty.current_dir}/terms.tpl"}
    	</div>
    	<!-- loadind terms from terms from Jquery -->
  		<br>
  		<button data-remodal-action="confirm" class="remodal-confirm">OK</button>
		</div>
		<!-- end of modal pop up -->


{/block}

{block name="footer"}
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="src/js/bootstrap.min.js"></script>
    <script src="src/js/remodal.min.js"></script>
    <script type="text/javascript">

        $(function(){
            $("#modal1Desc").load("{$asset}/terms.html");
        });

    </script>
{/block}