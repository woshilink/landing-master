{extends file="layout.tpl"}
{block name=title}{$name} {$title}{/block}
{block name=head}
  <link rel="icon" type="image/png" href="favicon.ico">
  <!-- Bootstrap -->
  <link href="landing/enhancement/src/css/bootstrap.min.css" rel="stylesheet">
  <link href="footer.css" rel="stylesheet">

  <link href="{$asset}/app.css" rel="stylesheet">
  <link href="landing/enhancement/src/css/remodal.css" rel="stylesheet">
  <link href="landing/enhancement/src/css/remodal-default-theme.css" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Oswald:400,700,300" rel="stylesheet" type="text/css">
   <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries-->
   <!--if lt IE 9-->
   <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
   <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <script>document.createElement( "picture" );</script>
  <script src="landing/enhancement/src/js/picturefill.min.js" async></script>
  <style media="screen">
    .main-content{
      background-image: url('{$asset}/bg.jpg');
      background-position: bottom;
      background-size: cover;
      background-repeat: no-repeat;
    }
  </style>
{/block}
{block name=body}
    <section id="main-nav">
        <nav class="navbar black-transparent navbar-fixed-top">
            <div class="container">
                {include file="lab/organisms/nav/nav-main.tpl" text=#text#}
            </div>
        </nav>
    </section>
  <a href="{$cta.sport}">
  <section class="main-content hidden-xs">
    <div class="container main-wrapper">
      <div class="row">
        <div class="col-xs-6">
          <div class="sports ">

            <img src="{$asset}/{$lang}/sports.png" alt="" class="img-responsive center-block">
          </div>
        </div>
        <div class="col-xs-6">
          <div class="offer ">
            
              <img src="{$asset}/{$lang}/offer.png" alt="" class="img-responsive center-block">
   
          </div>

          <div class="button" id="button">
            <button type="button" class="shiny-button btn center-block text-center cta btn-success btn-lg">

                今すぐベット

            </button>
          </div>

        </div>
      </div>
    </div>
  </section>
  <section class="mobile-content visible-xs">
    <div class="container-fluid">
      <div class="row">
        {if $countryCode == 'CHE'}
          {if $lang == 'de'}
            <img src="{$asset}/che/{$lang}/mobile.jpg" alt="" class="center-block img-responsive">
          {elseif $lang == 'fr'}
            <img src="{$asset}/che/{$lang}/mobile.jpg" alt="" class="center-block img-responsive">
          {/if}
        {else}
          <img src="{$asset}/{$lang}/mobile.jpg" alt="" class="center-block img-responsive">
        {/if}
      </div>
    </div>
  </section>

  <section class="steps-content">
    <div class="container">
      <div class="row">
        {if $countryCode == 'CHE'}
          {if $lang == 'de'}
            <img src="{$asset}/che/{$lang}/steps.png" alt="" class="hidden-xs center-block img-responsive">
            <img src="{$asset}/che/{$lang}/steps-mobile.jpg" alt=""class="visible-xs center-block img-responsive">
          {elseif $lang == 'fr'}
            <img src="{$asset}/che/{$lang}/steps.png" alt="" class="hidden-xs center-block img-responsive">
            <img src="{$asset}/che/{$lang}/steps-mobile.jpg" alt=""class="visible-xs center-block img-responsive">
          {/if}
        {else}
          <img src="{$asset}/{$lang}/steps.png" alt="" class="hidden-xs center-block img-responsive">
          <img src="{$asset}/{$lang}/steps-mobile.jpg" alt=""class="visible-xs center-block img-responsive">
        {/if}
      </div>
    </div>
  </section>
  </a>
  <div class="container-fluid">
    {if $countryCode == 'CHE'}
      {if $lang == 'de'}
        {include file="footer_de_v2.tpl" }
      {elseif $lang == 'fr'}
      {include file="footer_fr_v2.tpl" }
      {/if}
    {else}
      {if $lang == 'ie'}
        {include file="footer_en_v2.tpl" }
      {else}
        {include file="partial/footer/_footerSelector.tpl" }
      {/if}
    {/if}

  {include file="partial/modal/_remodal.tpl"}
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="landing/enhancement/src/js/jquery.countdown.min.js"></script>
  <script src="landing/enhancement/src/js/remodal.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.19.0/TweenMax.min.js"></script>

  <script type="text/javascript">
    $(function(){
        {if $countryCode == 'CHE'}
          $("#modal1Desc").load("terms/che/{$lang}/terms.html");
        {else}
          $("#modal1Desc").load("{$lang}/terms.html");
        {/if}
    });
    $('footer div').removeClass('container-fluid');
    $('footer div').addClass('container');
  </script>

{/block}
