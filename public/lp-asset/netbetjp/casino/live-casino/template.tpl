{extends file="layout.tpl"}
{block name=title}{$name} {$title}{/block}
{block name=head}
<link rel="icon" type="image/png" href="favicon.ico">
<!-- Bootstrap Core CSS -->
<link href="landing/20free-spins/src/css/bootstrap.min.css" rel="stylesheet">
<link href="ja/footer.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

<!-- Plugin CSS -->
<link rel="stylesheet" href="../template/templates/casino/{$lp}/styles.css" type="text/css">
<link rel="stylesheet" href="landing/20free-spins/src/css/remodal.css">
<link rel="stylesheet" href="landing/20free-spins/src/css/remodal-default-theme.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<style media="screen">
  header {
      background-image: url('../template/templates/casino/{$lp}/bg.jpg');
  }
</style>
{/block}

{block name=body}
  <div class="container">
      <div class="row">
        <div id="logo" class="col-xs-5 col-sm-3 col-md-2">
          <a href="{$url}" rel="nofollow">
            <img src="img/logo.png" alt="NetBet" class="pull-left img-responsive" >
          </a>
        </div>
          <div class="col-sm-3 col-md-5 hidden-xs hidden-sm custom-text">
            <p>楽しいスロット、大当たり、どこからでもプレーしよう！</p>
          </div>
          <div class="col-xs-6 col-sm-5 visible-xs visible-sm custom-text">
            <p>楽しいスロット！</p>
          </div>
          {if $co_logo}
            <div class="col-xs-12 col-sm-4 co-logo">
              <img src="{$co_logo}" class="img-responsive center-block" alt="">
            </div>
            <!-- end of co logo -->
          {else}
            <div class="col-xs-6 col-sm-3 co-logo pull-right hidden-xs">
              <img src="../template/templates/casino/{$lp}/top-icon.png" class="img-responsive pull-right" alt="">
            </div>
          {/if}
        <!-- Co logo -->
      </div>
  <!-- end of NAV -->

    </div>
  </div>
  <a href="{$url}">
  <header class="hidden-xs ">
      <div class="header-content">
          <div class="container">
            <div class="row">
              <div class="col-md-7 col-lg-8">
                <div class="offer">
                  <img src="../template/templates/casino/{$lp}/{$lang}/offer.png" alt="" class="hidden-xs img-responsive" />
                </div>

              </div>
            </div>

            <div class="row">
              <div class="col-md-8 col-lg-9">
                <div class="button">
                  <img src="../template/templates/casino/{$lp}/{$lang}/button.png" alt="" class="hidden-xs img-responsive" />
                </div>

              </div>
            </div>
          </div>
          <div class="container-fluid hidden-sm hidden-xs">
            <div class="row">
              <div class="steps">
                <div class="col-xs-12">
                  <img src="../template/templates/casino/{$lp}/{$lang}/steps.png" alt="" class="hidden-xs img-responsive center-block" />
                </div>
              </div>
            </div>
          </div>
      </div>
  </header>

  <section class="mobile">
    <div class="container-fluid">
      <div class="row">
        <div class="col-xs-12">
          <img src="../template/templates/casino/{$lp}/{$lang}/mobile.jpg" alt="" class="visible-xs img-responsive center-block" />
        </div>
      </div>
    </div>
  </section>
  </a>
  <footer class="footer-text">
    <div class="container">
    {include file="lab/templates/ja/footer/footer.tpl" }
    </div>
  </footer>


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
    <script src="free25spin/src/js/bootstrap.min.js"></script>
    <script src="free25spin/src/js/jquery-1.11.1.min.js"></script>
     <script src="free25spin/src/js/remodal.min.js"></script>

     <script>
      $(function(){
        $("#modal1Desc").load("../template/templates/casino/{$lp}/{$lang}/terms.html");
      });
     </script>
{/block}
