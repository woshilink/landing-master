{extends file="base/base.tpl"}
{block name=title}{$name} {$title}{/block}
{block name=head}
  <link rel="icon" type="image/png" href="favicon.ico">
  <!-- Bootstrap -->
  <link href="3-cards/src/css/bootstrap.min.css" rel="stylesheet">
  <link href="{$asset}/app.css" rel="stylesheet">
  <link href="footer.css" rel="stylesheet">
  <link href="3-cards/src/css/remodal.css" rel="stylesheet">
  <link href="3-cards/src/css/remodal-default-theme.css" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Oswald:400,700,300" rel="stylesheet" type="text/css">
  <link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">

  <link href="footer.css" rel="stylesheet">
   <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries-->
   <!--if lt IE 9-->
   <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
   <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

  <style media="screen">
    .upselling{
      padding: 35px;
    }
    .color-white a {
      color: #fff;
      font-weight: 600;
      border-radius: 6px 6px 0 0;
    }
    .bg-grey {
      background-color: #1e1e1e;
      color: #fff;
    }
    .tc{
      height: 40px;
      padding: 5px;
    }
    .color-white {
      color: #fff;
    }
    #logo{
      padding: 10px;
    }
    #main{
      background-image: url('{$asset}/bg.jpg');
      position: relative;
      width: 100%;
      text-align: center;
      color: #fff;
      z-index: -1;
      background-position:center;
      -webkit-background-size: cover;
      -moz-background-size: cover;
      background-size: cover;
    }

    #main .button{
      margin-top: 4%;
    }
    #mobile .container .col-xs-12{
      padding: 0;
    }

    .step p {
      color: #FFF3F3;
    }
    .container-fluid{
      padding-left: 0;
      padding-right: 0;
    }
    .spiner{
      margin-top: -300px;
    }
    @media only screen and (min-width : 1601px) {
      .spiner{
        margin-top: -335px;
      }
    }
    @media only screen and (max-width : 1200px) {
      .spiner{
        margin-top: -245px;
      }
    }
    @media only screen and (max-width : 992px) {
      .spiner{
        margin-top: 0;
      }
    }
    @media only screen and (max-width : 767px) {
      .heroContainer{
        background-color: black;
      }
    }
  </style>
{/block}
{block name=body}
  <section id="main-nav">
    <nav class="navbar black-transparent">
      <div class="container">
        {include file="lab/organisms/nav/nav-main.tpl" text=$text}
      </div>
    </nav>
  </section>
  <a href="{$url}">
  <section id="main" class="hidden-xs">
    <div class="container">
      <div class="row">

          <div class="col-xs-12  col-sm-6 pull-right">
            <div class="offer">
              <img src="{$asset}/offer.gif" alt="OFFER" class="img-responsive center-block"/>
            </div>
          </div>
          <div class="col-xs-12 col-sm-6 ">
              <div class="slot">
                <img src="{$asset}/pic.png" alt="Slot" class="img-responsive center-block hidden-sm"/>
                <img src="{$asset}/slot2.gif" alt="Slot" class="img-responsive center-block spiner"/>
              </div>
          </div>

      </div>

    </div>
  </section>
  <section id="mobile" class="visible-xs">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <img src="{$asset}/mobile.jpg" alt="OFFER" class="img-responsive"/>
        </div>
      </div>
    </div>
  </section>
  <div class="container-fluid">
    <div class="row text-center">
      <span style="color: #ffffff;">New customers only | £250 deposit bonus | x30 playthrough | T&amp;Cs apply</span>
    </div>
  </div>
    <section class="mid-payment bg-grey-dark">
      <div class="container-fluid wrapper-1170">
        {include file="lab/organisms/extra/paypal-bitcoin.tpl"}
      </div>
    </section>
  <section id="steps">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <img src="{$asset}/steps.png" alt="Steps" class="img-responsive hidden-xs center-block"/>
          <img src="{$asset}/steps_mobile.png" alt="Steps" class="img-responsive visible-xs"/>
        </div>
      </div>
    </div>
  </section>
  </a>
  <section class="upselling">
    <div class="bottom-blocks container">
      <div class="odds-title text-center">
        <span class="odds-title-text text-center">NETBET SPECIAL OFFERS</span>
      </div>
      <div class="row">
        <div class="columns col-xs-12 col-sm-12 col-md-12 col-lg-4 item item-3">
          <div class="wrapper light-color">
            <div>
              <div>
                <p class="text-0">Live Casino</p>
                <p class="text-1"></p>
                <p class="text-2"><span style="color: #e7b418;">Win</span> Today</p>
                <div class="button-wrapper">
                  <a data-promocode="NETBET" data-cta-action="same" href="https://banners.livepartners.com/click.php?p=124&l=en-GB" class="btn-primary button loaded-y register-cta"><img src="//go.livepartners.com/ads.netbet.co.uk_devnathi/casino/tv-lander/src/img/right-arrow.png" height="18" width="18">&nbsp;&nbsp;REGISTER NOW</a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="columns col-xs-12 col-sm-12 col-md-12 col-lg-4 item item-1">
                    <div class="wrapper light-color">
						<!--<div class="youtube">
						<div id="ytplayer"></div>

						</div>-->
                        <div>
                            <div>
								<p class="text text-0">Welcome Offer</p>
                                <p class="text text-1"></p>
                                <p class="text text-2">UP to <span style="color: #e7b418;">£250</span> BONUS</p>
                                <div class="button-wrapper">
                                	<a data-promocode="NETBET" data-cta-action="same" href="{$url}" class="btn-primary button loaded-y register-cta"><img src="//go.livepartners.com/ads.netbet.co.uk_devnathi/casino/tv-lander/src/img/right-arrow.png" height="18" width="18">&nbsp;&nbsp;REGISTER NOW</a>
                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tc bg-grey">
                      <div class="row">
                        <div class="col-xs-12">
                          <h6 class="color-white text-center">
                            New players only. 25 no deposit free spins, 40x wagering and <a href="#modal">T&amp;Cs</a> Apply
                          </h6>
                        </div>
                      </div>
                    </div>
                </div>
                <div class="columns col-xs-12 col-sm-12 col-md-12 col-lg-4 item item-4">
                  <div class="wrapper light-color">
                    <div>
                      <div>
                        <p class="text-0">Promotions</p>
                        <p class="text-1"></p>
                        <p class="text-2">View our <span style="color: #e7b418;">latest</span> offers</p>
                        <div class="button-wrapper">
                          <a data-promocode="NETBET" data-cta-action="same" href="{$url}" class="btn-primary button loaded-y register-cta"><img src="//go.livepartners.com/ads.netbet.co.uk_devnathi/casino/tv-lander/src/img/right-arrow.png" height="18" width="18" style="">&nbsp;&nbsp;REGISTER NOW</a>
                        </div>

                      </div>
                    </div>
                  </div>
                </div>
      </div>
    </div>
  </section>
  <footer id="footer" >
    <div class="container-fluid wrapper-1170">
      {include
      file="lab/organisms/footer/footer-main.tpl"
      responsible_text_header=$content.responsible_text_header
      payment_text_header=$content.payment_text_header
      payment_methods=$content.payment_methods
      responsibles=$content.responsibles
      }
    </div>
  </footer>

  <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
    <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
    <div>
      <p id="modal1Desc"></p>
    </div>
    <!-- loadind terms from terms from Jquery -->
    <br>
    <button data-remodal-action="confirm" class="remodal-confirm">OK</button>&nbsp;
  </div>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="3-cards/src/js/remodal.min.js"></script>
  <script type="text/javascript">
      $(function(){
        $("#modal1Desc").load("vip-terms.html");
      });
    $('footer>div').removeClass('container-fluid');
    $('footer>div').addClass('container');
  </script>
{/block}
