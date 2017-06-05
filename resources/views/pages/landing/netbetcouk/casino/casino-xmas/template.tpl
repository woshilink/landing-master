{extends file="pages/landing/netbetcouk/sport/tv-lander/template.tpl"}



{block name=title}
    Netbet - {$product}
{/block}

{block name=head}
    <link href="{URL::to('/')}/src/css/main.css" rel="stylesheet">
	<link rel="stylesheet" href="https://css.netbet.com/gms/sprites/sprites_eu.css?63">
	<link rel="stylesheet" type="text/css" href="{$asset}/style.css">
  <link rel="stylesheet" href="{$asset}/remodal.css">
  <link rel="stylesheet" href="{$asset}/remodal-default-theme.css">

 <style type="text/css">
 @font-face {
  font-family: 'bebas_neuebold';
  src: url("src/fonts/bebasneue_bold-webfont.woff2") format("woff2"), url("src/fonts/bebasneue_bold-webfont.woff") format("woff");
  font-weight: normal;
  font-style: normal;
}

@font-face {
  font-family: 'bebas_neuebook';
  src: url("src/fonts/bebasneue_book-webfont.woff2") format("woff2"), url("src/fonts/bebasneue_book-webfont.woff") format("woff");
  font-weight: normal;
  font-style: normal;
}

@font-face {
  font-family: 'bebas_neuelight';
  src: url("src/fonts/bebasneue_light-webfont.woff2") format("woff2"), url("src/fonts/bebasneue_light-webfont.woff") format("woff");
  font-weight: normal;
  font-style: normal;
}

@font-face {
  font-family: 'bebas_neue_regularregular';
  src: url("src/fonts/bebasneue_regular-webfont.woff2") format("woff2"), url("src/fonts/bebasneue_regular-webfont.woff") format("woff");
  font-weight: normal;
  font-style: normal;
}

@font-face {
  font-family: 'bebas_neuethin';
  src: url("src/fonts/bebasneue_thin-webfont.woff2") format("woff2"), url("src/fonts/bebasneue_thin-webfont.woff") format("woff");
  font-weight: normal;
  font-style: normal;
}

@font-face {
  font-family: 'bebas_neueromania';
  src: url("src/fonts/bebasneue_romania-webfont.woff2") format("woff2"), url("src/fonts/bebasneue_romania-webfont.woff") format("woff");
  font-weight: normal;
  font-style: normal;
}

 	.hero .hero_content {
  width: 100%;
  background: url({$asset}/Hero-Area-Bg.jpg) no-repeat center center fixed;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  height: auto;
  position: absolute;
  height: 100%;
}
.bg-darkgrey{
	background-color: #1e1e1e;;
}
#terms {
	padding-top: 16px;
}
#terms a, #footer h3, #footer p{
	color: #999999;;
}
#footer p{
	padding-bottom: 20px;

}
 </style>

{/block}

{block name=body}
{assign "lpconf" "{$smarty.current_dir}/lp.conf"}
    {config_load file=$lpconf}

	<header>
		<div class="wrapper">
			<div class="container">
				<div class="header_content">
					<div class="logo_container">
						<a href="{$cta.casino}" class="logo sprite-global-layout sprite-global-layout-logo"></a>
					</div>
					<div class="header_title">
						<a href="{$cta.casino}" class="title">CASINO ROOM</a>
					</div>
					<div class="sign_btn_holder">
						<a href="{$cta.casino}" class="sign_up_btn">SIGN UP</a>
					</div>
				</div>
			</div>
		</div>
	</header>

	<section class="hero">
		<div class="hero_content">
			<div class="wrapper">
				<div class="container">
					<div class="hero_inner_content">
						<div class="text_holder col-xs-12 col-sm-6 col-md-6 animated fadeIn">
							<a href="https://banners.livepartners.com/click.php?p=120&l=en-GB&id=&lp=casino-xmas&bid2land=1&t=register" class="text_inner">
								<p class="hero_text large x1 delayX1 bounceInLeft">&pound;500,000</p>
								<p class="hero_text mid x3 delayX1 fadeIn">Prizes in december</p>
								<p class="hero_text w_border x3 delayX1 fadeIn">1 free prize guaranteed per player </p>
								<p class="hero_text large x1 delayX1 fadeInRight">Every Day</p>
							</a>
						</div>
						<div class="images_holder col-xs-12 col-sm-6 col-md-6">
							<div class="green_bug x1 delay fadeInUp">
								<img src="{$asset}/Tiny.png" alt="">
							</div>
							<div class="calendar_holder animated fadeInDownBig">
								<img src="{$asset}/Calendar.png" alt="">
								<div class="delayX3 animated fadeIn">
									<div class="calendar_inner">
										<div class="door_holder">
											<div class="door"></div>
										</div>
										<a href="https://banners.livepartners.com/click.php?p=120&l=en-GB&id=&lp={$asset}&bid2land=1&t=register" class="cta x1 delayX3 pulse infinite">
											<span class="click">Click</span>
											<span class="reveal">To Reveal your prize</span>
										</a>
									</div>
								</div>
							</div>
							<div class="chips_holder animated delay fadeInRight">
								<img src="{$asset}/Chips.png" alt="">
							</div>
							<div class="blue_flower x1 delay fadeInUp">
								<img src="{$asset}/Flower.png" alt="">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="hero_footer animated fadeIn">
		<div class="wrapper">
			<div class="container">
				<div class="hero_footer_text">
					<div class="sign_up_btn">
						<a href="{$cta.casino}" class="btn">Sign Up</a>
					</div>
					<p class="text">ADVENT CALENDAR: EXISTING AND NEW PLAYERS  ELIGIBLE. THE ONLY CONDITION IS PLAYERS MUST HAVE MADE AT LEAST ONE DEPOSIT ON NETBET CASINO - 1 FREE PRIZE GUARANTEED PER DAY, FROM 1ST TO 24TH DECEMBER 2016.   <!--<a href="{$cta.casino}" class="tc_link">accusamus.</a>--></p>
				</div>
			</div>
		</div>
	</div>
	<section class="steps_section">
		<div class="wrapper">
			<div class="container">
				<h1 class="steps_title animated fadeIn wow">Here's how it works</h1>
				<div class="steps_holder">
					<a href="{$cta.casino}" class="step_link">
						<ul class="step step_one">
							<li class="text_container text_desktop col-xs-5">
								<div class="step_text text_left">
									<p class="text_blue animated fadeInLeft wow">1: create your account</p>
									<p class="text_grey delay animated fadeInLeft wow">to access our games and prizes</p>
								</div>
							</li>
							<li class="icon_holder col-xs-2">
								<div class="step_icon animated fadeIn wow">
									<img src="{$asset}/Step1.png" alt="">
								</div>
							</li>
							<li class="text_container text_mobile">
								<div class="step_text text_left">
									<p class="text_blue animated fadeInLeft wow">1: create your account</p>
									<p class="text_grey delay animated fadeInLeft wow">to access our games and prizes</p>
								</div>
							</li>
						</ul>
					</a>
					<div class="clearfix"></div>
					<div class="line animaded fadeInDown wow"></div>
					<div class="clearfix"></div>
					<a href="{$cta.casino}" class="step_link">
						<ul class="step step_two">
							<li class="text_container text_desktop col-xs-5">
								<div class="step_text text_left">
									<p class="text_blue animated fadeInLeft wow">2: We double your first deposit</p>
									<p class="text_grey delay animated fadeInLeft wow">up to &pound;250 bonus</p>
								</div>
							</li>
							<li class="icon_holder col-xs-2">
								<div class="step_icon animated fadeIn wow">
									<img src="{$asset}/Step2.png" alt="">
								</div>
							</li>
							<li class="text_container text_mobile">
								<div class="step_text text_left">
									<p class="text_blue animated fadeInLeft wow">2: We double your first deposit</p>
									<p class="text_grey delay animated fadeInLeft wow">up to &pound;250 bonus</p>
								</div>
							</li>
							<li class="text_container col-xs-5">
								<div class="step_text text_right">
									<p class="text_blue animated fadeInRight wow">...PLUS! 1 FREE PRIZE A DAY GUARANTEED!</p>
									<p class="text_grey delay animated fadeInRight wow">FROM 1ST-24TH DECEMBER </p>
								</div>
							</li>
						</ul>
					</a>
					<div class="clearfix"></div>
					<div class="line animaded fadeInDown wow"></div>
					<div class="clearfix"></div>
					<a href="{$cta.casino}" class="step_link">
						<ul class="step step_three">
							<li class="empty col-xs-5"></li>
							<li class="icon_holder col-xs-2">
								<div class="step_icon animated fadeIn wow">
									<img src="{$asset}/Step3.png" alt="">
								</div>
							</li>
							<li class="text_container col-xs-5">
								<div class="step_text text_right">
									<p class="text_blue animated fadeInRight wow">3: PLAY ON NETBET CASINO</p>
									<p class="text_grey delay animated fadeInRight wow">WE OFFER OVER 1,000 GAMES!</p>
								</div>
							</li>
						</ul>
					</a>
				</div>
			</div>
		</div>
	</section>
	<section class="blue_banner">
		<div class="wrapper">
			<div class="container">
				<p class="text">deposit securely with <span class="blue_banner_logo"><img src="{$asset}/PayPal.png" alt=""></span> and <span class="blue_banner_logo"><img src="{$asset}/BitCoin.png" alt=""></span></p>
			</div>
		</div>
	</section>

	<div class="clearfix"></div>

	 <section id="terms" class="bg-darkgrey">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <a href="">
                        {#terms#}
                    </a>
                </div>
            </div>
            <div class="row hidden ">
                <div class="terms-text">
                    <div class="col-xs-12" style=" font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif">
                        {include file="pages/landing/netbetcouk/terms/casino/welcome-offer/terms.tpl"}
                    </div>
                </div>

            </div>
        </div>
    </section>

    <!--  <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
    <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
    <div>
      <p id="modal1Desc"></p>
    </div> -->
    	<!-- loadind terms from terms from Jquery -->
  	<!-- <br>
  	<button data-remodal-action="confirm" class="remodal-confirm">OK</button>
  </div> -->

	<section id="footer" class="bg-darkgrey">
        <div class="container">
            {include file="lab/organisms/footer/footer-main.tpl"
            responsible_text_header = #responsible_text_header#
            payment_text_header = #payment_text_header#
            payment_methods = $content.payment_methods
            responsibles = $content.responsibles
            }
            <br>
        </div>
    </section>




{/block}

{block name=footer}


    <script src="{URL::to('/')}/src/js/emodal.js"></script>
    <script type="text/javascript">

        var options = {
            message: $('.terms-text'),
            title: " ",
            size: eModal.size.lg,
            buttons: [
                {literal}
                {text: 'Close', style: 'btn btn-danger',   close: true},
                {/literal}

            ],

        };
        $( "#terms a" ).click(function(e) {
            e.preventDefault();
            eModal.alert(options);
        });
    </script>
    <script>
        $(function(){
          $("#modal1Desc").load("terms.html");
        });
    </script>


{/block}
