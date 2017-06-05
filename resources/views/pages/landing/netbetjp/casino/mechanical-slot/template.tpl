{extends file="base/base.tpl"}
{block name=title}{$brand|capitalize} {$product|capitalize}{/block}
{block name=head}

<link href="src/css/main.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

<!-- Plugin CSS -->
<link rel="stylesheet" href="{$asset}/styles.css" type="text/css">
<link rel="stylesheet" href="src/css/remodal.css">
<link rel="stylesheet" href="src/css/remodal-default-theme.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<style media="screen">
  header {
      background-image: url('{$asset}/bg.jpg');
  }
  #footer{
    margin-top: 20px;
  }
</style>
{/block}

{block name=body}
  <div class="container">
      <div class="row">
        <div id="logo" class="col-xs-5 col-sm-3 col-md-2">
          <a href="{$cta.casino}" rel="nofollow">
            <img src="src/img/{$brand}/logo.png" alt="NetBet" class="pull-left img-responsive" >
          </a>
        </div>
          <div class="col-sm-5 col-md-6 hidden-xs hidden-sm custom-text">
            <p>楽しいスロット、大当たり、どこからでもプレーしよう！</p>
          </div>
          <div class="col-xs-6 visible-xs visible-sm custom-text">
            <p>楽しいスロット！</p>
          </div>
          {if $co_logo}
            <div class="col-xs-6 col-sm-4 co-logo">
              <img src="{$co_logo}" class="img-responsive center-block" alt="">
            </div>
            <!-- end of co logo -->
          {else}
            <div class="col-xs-6 col-sm-3 co-logo pull-right hidden-xs">
              <img src="{$asset}/top-icon.png" class="img-responsive pull-right" alt="">
            </div>
          {/if}
        <!-- Co logo -->
      </div>
  <!-- end of NAV -->

    </div>
  </div>
  <a href="{$cta.casino}">
  <header class="hidden-xs hidden-sm">
      <div class="header-content">
          <div class="container">
            {* <div class="row">
              <div class="col-md-7 col-lg-8">
                <div class="offer">
                  <img src="{$asset}/{$lang}/offer.png" alt="" class="hidden-xs hidden-sm img-responsive" />
                </div>

              </div>
            </div>
              *}
            <div class="row">
              <div class="col-md-8 col-lg-9">
                <div class="button">
                  <img src="{$asset}/{$lang}/button.png" alt="" class="hidden-xs hidden-sm img-responsive" />
                </div>

              </div>
            </div>
          </div>
          <div class="container-fluid">
            <div class="row">
              <div class="steps">
                <div class="col-xs-12">
                  <img src="{$asset}/{$lang}/steps.png" alt="" class="hidden-xs img-responsive center-block" />
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
          <img src="{$asset}/{$lang}/tablet.jpg" alt="" class="visible-sm img-responsive center-block" />
          <img src="{$asset}/{$lang}/mobile.jpg" alt="" class="visible-xs img-responsive center-block" />
        </div>
      </div>
    </div>
  </section>
  </a>
  <section id="footer" class="bg-darkgrey">
    <div class="container">
      {include file="lab/organisms/footer/footer-main.tpl"
        responsible_text_header = '安全と信頼'
        payment_text_header = 'お支払い方法'
      }
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


{/block}

{block name="footer"}

  <script src="src/js/remodal.min.js"></script>

  <script>
    $(function(){
      $("#modal1Desc").load("{$asset}/{$lang}/terms.html");
    });
  </script>
{/block}