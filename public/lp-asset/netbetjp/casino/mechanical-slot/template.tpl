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
              <img src="../template/templates/casino/{$lp}/top-icon.png" class="img-responsive pull-right" alt="">
            </div>
          {/if}
        <!-- Co logo -->
      </div>
  <!-- end of NAV -->

    </div>
  </div>
  <a href="{$url}">
  <header class="hidden-xs hidden-sm">
      <div class="header-content">
          <div class="container">
            {* <div class="row">
              <div class="col-md-7 col-lg-8">
                <div class="offer">
                  <img src="../template/templates/casino/{$lp}/{$lang}/offer.png" alt="" class="hidden-xs hidden-sm img-responsive" />
                </div>

              </div>
            </div>
              *}
            <div class="row">
              <div class="col-md-8 col-lg-9">
                <div class="button">
                  <img src="../template/templates/casino/{$lp}/{$lang}/button.png" alt="" class="hidden-xs hidden-sm img-responsive" />
                </div>

              </div>
            </div>
          </div>
          <div class="container-fluid">
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
          <img src="../template/templates/casino/{$lp}/{$lang}/tablet.jpg" alt="" class="visible-sm img-responsive center-block" />
          <img src="../template/templates/casino/{$lp}/{$lang}/mobile.jpg" alt="" class="visible-xs img-responsive center-block" />
        </div>
      </div>
    </div>
  </section>
  </a>
  <footer class="footer-text">
    <div class="container">
      <div class="row hidden-xs">
        <div class="col-xs-12 col-sm-6 col-md-6">
          <h3>お支払い方法</h3>
          <img src="ja/img/footer/payment-logo.png" alt="" class="img-responsive" />
        </div>
        <div class="col-xs-12 col-sm-6 col-md-3 col-md-offset-3">

          <img src="ja/img/footer/devices.png" alt="" class="pull-right img-responsive"/>
        </div>
      </div>

      <div class="row visible-xs">
        <div class="col-xs-12">
          <h3>お支払い方法</h3>
          <img src="ja/img/footer/mobile-payment-logos.png" alt="" class="img-responsive" />
        </div>
      </div>

      <div class="row hidden-xs">
        <div class="col-xs-12 col-sm-6">
          <h3>公式スポンサー</h3>
          <img src="ja/img/footer/support-logo.png" alt="" class="img-responsive" />
        </div>
        <div class="col-xs-12 col-sm-4 col-sm-offset-2">
          <h3>安全と信頼</h3>
          <img src="ja/img/footer/commision-logo.png" alt="" class="pull-right img-responsive"/>
        </div>
      </div>

      <div class="row visible-xs">
        <div class="col-xs-12">
          <h3>ソフトウェアプロバイダー</h3>
          <img src="ja/img/footer/mobile-provider-logos.png" alt="" class="img-responsive"/>
        </div>
      </div>

      <div class="row hidden-xs">
        <div class="col-xs-12">
          <h3>ソフトウェア　プロバイダ</h3>
          <img src="ja/img/footer/all-sponser-logo.png" alt="" class="img-responsive" />
        </div>

      </div>
      <div class="row">
        <div class="col-xs-12">

          <img src="ja/img/footer/footer-division.png" alt="" class="img-responsive" />
        </div>

      </div>
      <div class="row hidden-xs">
          <div class="col-xs-12">
            <div class="gray-text">
              <p>
                本ウェブサイトにアクセスしウェブサイトを閲覧をする事により、あなたが利用している端末にクッキーを使用する事に同意したものと見なします。クッキーの使用はサービス向上が目的であり貴方のプライバシーを侵害するものではありません。クッキーの設定はいつでも変更ができます。詳細は弊社のクッキーのポリシーについてご確認ください。
              </p>
              <p>
                NetBet.comのウェブサイトはCosmo Gaming Company Limited、登録住所　209, Marina street, Pieta PTA 9041, Malta　が所有し管理しています(登録番号C41936)。
              </p>
              <p>
                Cosmo Gaming Company Limitedはマルタ国のLotteries and Gaming Authority (LGA)により認定を受け規制され次のライセンスを保有しています - LGA/CL1/272/2006(2008年2月21日発行)、　LGA/CL1/608/2009(2012年3月15日発行)、LGA/CL2/272/2012(2013年7月10日発行)、LGA/CL3/608/2009(2013年9月5日発行)、LGA/CL1/855/2012（2013年12月23日発行）、LGA/CL1/955/2014（2014年9月18日発行)。
              </p>
              <p>
                ギャンブルは金銭的依存のリスクを伴います。責任を持ってプレイをお楽しみください。
              </p>
              <p>
                @2017 Cosmo Gaming Company Limited. 無断複写･転載を禁じます。
              </p>
            </div>
          </div>
      </div>
      <div class="row">
        <div class="col-xs-12 col-md-8">
          <p class="gray-text visible-xs">
            @2017 Cosmo Gaming Company Limited. 無断複写･転載を禁じます。
          </p>
          <p class="gray-text">
            <img src="ja/img/footer/18-icon.png" alt="" />
            責任を持ったギャンブル。ギャンブルは金銭的依存のリスクを伴います。責任を持ってプレイをお楽しみください。
          </p>
        </div>
        <div class="col-xs-12 col-md-4">
          <img src="ja/img/footer/bottom-icon.png" alt=""  class="img-responsive hidden-xs"/>
          <img src="ja/img/footer/mobile-commission-logos.png" alt=""  class="img-responsive visible-xs"/>
        </div>
      </div>
      <div class="row">

      </div>
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
