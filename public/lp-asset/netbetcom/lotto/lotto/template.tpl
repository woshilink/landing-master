{extends file="layout.tpl"}
{block name=title}{$name} {$title}{/block}
{block name=head}
  <link rel="icon" type="image/png" href="favicon.ico">
  <!-- Bootstrap -->
  <link href="src/css/bootstrap.min.css" rel="stylesheet">
  <link href="footer.css" rel="stylesheet">

  <link href="../template/templates/lotto/{$lp}/app.css" rel="stylesheet">
  <link href="src/css/remodal.css" rel="stylesheet">
  <link href="src/css/remodal-default-theme.css" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Oswald:400,700,300" rel="stylesheet" type="text/css">
  <link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
   <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries-->
   <!--if lt IE 9-->
   <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
   <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

  <style media="screen">
    .main-content{
      background-image: url('../template/templates/lotto/{$lp}/img/bg.jpg');
      background-position: bottom;
      background-repeat: no-repeat;
    }
    {if $lang == 'fr'}
      button.btn.btn-lg {
        padding: 18px 45px;
        font-size: 25px;
      }
    {/if}
  </style>
{/block}
{block name=body}

  {assign "lpconf" "{$smarty.current_dir}/lang/{$lang}/lp.conf"}
  {config_load file=$lpconf}
  <nav>
    <div class="container-fluid">

      {if $countryCode == 'CHE'}
        {include file="partial/nav/nav-ch-de.tpl"}
      {else}
        {include file="partial/nav/_nav.tpl"}
      {/if}

    </div>
  </nav>
<a href="{$url}">
  <section class="main-content hidden-xs">
    <img src="../template/templates/lotto/{$lp}/lang/{$lang}/brand-new.png" alt="BRAND NEW" class="img-responsive hidden-xs brand-new"/>
    <div class="container-fluid">
      <div class="row">
        <div class="col-xs-6 col-xs-offset-3">
          <div class="offer">
            <img src="../template/templates/lotto/{$lp}/lang/{$lang}/offer.png" alt="Circle" class="center-block img-responsive" />
          </div>
        </div>
        <div class="col-xs-12">

          <div class="button center-block text-center" id="button">
            <button type="button" name="button" class="button btn btn-lg shiny-button ">
              {* PLAY NOW *}
              {#cta#}
            </button>
          </div>

        </div>
      </div>
    </div>
  </section>
  <section class="mobile-content visible-xs">
    <div class="container-fluid">
      <div class="row">
          <img src="../template/templates/lotto/{$lp}/lang/{$lang}/mobile.jpg" alt="" class="center-block img-responsive ">
      </div>
    </div>
  </section>
  <section class="steps-content">
    <div class="container-fluid">
      <div class="row">
          <img src="../template/templates/lotto/{$lp}/lang/{$lang}/steps.png" alt="" class="hidden-xs center-block img-responsive">
      </div>
    </div>
  </section>
  </a>
  <section id="games">
    <div class="container-fluid">
      <div class="col-sm-4 col-md-2 col-lg-2 ">
        <a href="https://lotto.netbet.com/{$lang}/play/lucky-7">
          <div class="icon border-lightblue">
            <img src="../template/templates/lotto/{$lp}/img/icon-lotto.png" alt="" class="img-responsive center-block " />
            <h5>
              {#lucky#}
              {* 7 OUT OF 42 *}
            </h5>
          </div>
        </div>
      </a>
      <div class="col-sm-4 col-md-2 col-lg-2 ">
        <a href="https://lotto.netbet.com/{$lang}/play/dice">
        <div class="icon border-orange">
          <img src="../template/templates/lotto/{$lp}/img/icon-Dices.png" alt="" class="img-responsive center-block" />
          <h5>
            {#dice#}
          </h5>
        </div>
      </a>
      </div>
      <div class="col-sm-4 col-md-2 col-lg-2 ">
        <a href="https://lotto.netbet.com/{$lang}/play/wheel-of-fortune">

        <div class="icon border-yellow">
          <img src="../template/templates/lotto/{$lp}/img/icon-Wheel.png" alt="" class="img-responsive center-block" />
          <h5>
            {#wheel#}
          </h5>
        </div>
      </a>
      </div>
      <div class="col-sm-4 col-md-2 col-lg-2 ">
        <a href="https://lotto.netbet.com/{$lang}/play/bet-on-poker">
        <div class="icon border-green">
          <img src="../template/templates/lotto/{$lp}/img/icon-Poker.png" alt="" class="img-responsive center-block" />
          <h5>
            {* BET ON POKER *}
            {#poker#}
          </h5>
        </div>
        </a>
      </div>
      <div class="col-sm-4 col-md-2 col-lg-2 ">
        <a href="https://lotto.netbet.com/{$lang}/play/bet-on-baccarat">
        <div class="icon border-red">
            <img src="../template/templates/lotto/{$lp}/img/icon-Baccarat.png" alt="" class="img-responsive center-block" />
            <h5>
              {* BACARAT *}
              {#bacarat#}
            </h5>
        </div>
      </a>
      </div>
      <div class="col-sm-4 col-md-2 col-lg-2 ">
        <a href="https://lotto.netbet.com/{$lang}/play/bet-on-war">
        <div class="icon border-blue">
            <img src="../template/templates/lotto/{$lp}/img/icon-War.png" alt="" class="img-responsive center-block" />
            <h5>
              {* WAR OF BETS *}
              {#war#}
            </h5>
        </div>
      </a>
      </div>
    </div>
  </section>

      {if $lang == 'ie'}
        {include file="footer_en_v2.tpl" }
      {else}
        {include file="partial/footer/_footerSelector.tpl" }
      {/if}



  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.19.0/TweenMax.min.js"></script>

  <script type="text/javascript">
    $(function(){

          $("#modal1Desc").load("");

    });
     $(".terms a").attr("href", "{$terms_url}").attr("target", "blank");
    $('.container-fluid').addClass('main-wrapper');

  </script>

{/block}
