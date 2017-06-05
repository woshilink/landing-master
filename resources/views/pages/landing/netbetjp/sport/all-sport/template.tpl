{extends file="base/base.tpl"}
{block name=title}{$name} {$title}{/block}
{block name=head}
  <link rel="icon" type="image/png" href="favicon.ico">
  <!-- Bootstrap -->

  <link href="src/css/main.css" rel="stylesheet">

  <link href="{$asset}/app.css" rel="stylesheet">
  <link href="src/css/remodal.css" rel="stylesheet">
  <link href="src/css/remodal-default-theme.css" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Oswald:400,700,300" rel="stylesheet" type="text/css">

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
    <nav class="navbar black-transparent">
        <div class="container">
            {include file="lab/organisms/nav/nav-main.tpl" text=$text}
        </div>
    </nav>
</section>
  <a href="{$cta.sport}">
  <section class="main-content hidden-xs">
    <div class="container main-wrapper">
      <div class="row">
        <div class="col-xs-6">
          <div class="sports ">

            <img src="{$asset}/sports.png" alt="" class="img-responsive center-block">
          </div>
        </div>
        <div class="col-xs-6">
          <div class="offer ">
            {if $countryCode == 'CHE'}
              {if $lang == 'de'}
                <img src="{$asset}/lang/che/{$lang}/offer.png" alt="" class="img-responsive center-block">
              {elseif $lang == 'fr'}
                <img src="{$asset}/lang/che/{$lang}/offer.png" alt="" class="img-responsive center-block">
              {/if}
            {else}
              <img src="{$asset}/{$lang}/offer.png" alt="" class="img-responsive center-block">
            {/if}
          </div>

          <div class="button" id="button">
            <button type="button" class="shiny-button btn center-block text-center cta btn-success btn-lg">
              {if $countryCode == 'CHE'}
                {if $lang == 'de'}
                  JETZT WETTEN
                {elseif $lang == 'fr'}
                  PARIEZ
                {/if}
              {else}
              {if $lang == 'de'}
                JETZT WETTEN
              {elseif $lang == 'fr'}
                PARIEZ
              {elseif $lang == 'nl'}
                ZET IN
              {elseif $lang == 'ja'}
                今すぐベット
              {else}
                BET NOW
              {/if}
            {/if}
            </button>
          </div>

        </div>
      </div>
    </div>
  </section>
  <section class="mobile-content visible-xs">
    <div class="container-fluid">
      <div class="row">

          <img src="{$asset}/{$lang}/mobile.jpg" alt="" class="center-block img-responsive">

      </div>
    </div>
  </section>

  <section class="steps-content">
    <div class="container">
      <div class="row">

          <img src="{$asset}/{$lang}/steps.png" alt="" class="hidden-xs center-block img-responsive">
          <img src="{$asset}/{$lang}/steps-mobile.jpg" alt=""class="visible-xs center-block img-responsive">

      </div>
    </div>
  </section>
  </a>

    <section id="footer" class="bg-darkgrey">
        <div class="container">
            {include file="lab/organisms/footer/footer-main.tpl"
                responsible_text_header = '責任あるゲーミング'
                payment_text_header = 'お支払い方法'
            }
        </div>
    </section>

    <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
        <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
        <div>
            {include file="pages/landing/{$domain}/terms/{$product}/welcome-offer/terms.tpl"}
        </div>
        <!-- loadind terms from terms from Jquery -->
        <br>
        <button data-remodal-action="confirm" class="remodal-confirm">OK</button>
    </div>
    <!-- end of modal pop up -->



{/block}

{block name="footer"}
    <script src="src/js/remodal.min.js"></script>


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