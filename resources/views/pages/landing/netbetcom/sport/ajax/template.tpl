{extends file="base/base.tpl"}
{block name=title} {$brand|capitalize} {$product|capitalize} {/block}
{block name=head}

  <link href="{$asset}/app.css" rel="stylesheet">
  <link href="src/css/main.css" rel="stylesheet">
  <link href="src/css/remodal.css" rel="stylesheet">
  <link href="src/css/remodal-default-theme.css" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Oswald:400,700,300" rel="stylesheet" type="text/css">
  <link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">

  <style media="screen">
    .main-content{
      background-image: url('{$asset}/bg.jpg');
      background-position: top;
      background-repeat: no-repeat;
    }
    {if $lang == 'fr' || $lang =='de'}
      .offer .btn-black {
        font-size: 1.9em;
        padding: 16px 28px;
      }
    {/if}
    @media only screen and (max-width : 1200px){
      {if $lang == 'de'}
        .offer h1 {
          font-size: 30px;
        }
        .offer .btn-black {
            font-size: 1.5em;
            padding: 12px 35px;
        }
      {elseif $lang == 'fr'}
        .offer .btn-black {
            font-size: 1.7em;
            padding: 18px 12px;
          }
      {/if}
    }
    @media only screen and (max-width : 769px) {
      .main-content{
        background-image: url('{$asset}/mobile-bg.jpg');
      }
      {if $co_logo !== ''}
        #logo{
          margin-top: 3%;
        }
      {/if}
    }
  </style>
{/block}
{block name=body}
{assign "lpconf" "{$smarty.current_dir}/{$lang}/lp.conf"}
{config_load file=$lpconf}
  <section id="main-nav">
    <nav class="navbar black-transparent navbar-fixed-top">
      <div class="container">
        {include file="lab/organisms/nav/nav-main.tpl" text=$text}
      </div>
    </nav>
  </section>
  <a href="{$url}">
  <section class="main-content ">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <div class="offer">
            <div class="row">
              {* <div class="col-xs-12 col-sm-12 col-md-8">
                <h1>{#offer_text#}</h1>
              </div>
              <img src="{$asset}/mobile.png" alt="" class="mobile-img visible-xs center-block img-responsive">

              <div class="col-xs-12 col-sm-12 col-md-4">
                <button class="btn btn-black shiny-button" type="button" name="button">
                  <span>{#cta#}</span>
                </button>
              </div> *}
              <div class="col-xs-12 col-sm-12 col-md-10 col-md-offset-1">
                <div class="row">
                  <div class="col-xs-12 co-sm-12 col-md-8">
                    <h1>{#offer_text#}</h1>
                  </div>
                  <img src="{$asset}/mobile.png" alt="" class="mobile-img visible-xs center-block img-responsive">
                  <div class="col-xs-12 col-sm-12 col-md-4">
                    <button class="btn btn-black shiny-button" type="button" name="button">
                      <span>{#cta#}</span>
                    </button>

                  </div>
                </div>

              </div>
            </div>
          </div>

        </div>
      </div>
    </div>

  </section>
  <section class="steps-content">
    <div class="container-fluid main-wrapper">

        {include file="lab/organisms/steps/3steps-nest.tpl"
          class=#stepgrid#
          step1=#step1#
          step2=#step2#
          step3=#step3#
          step1text=#step1dec#
          step2text=#step2dec#
          step3text=#step3dec#
        }

    </div>
  </section>
  </a>
  <section id="terms">
    <div class="container">
      <div class="row terms">
        <div class="col-xs-11 ">
          <br>
          <p class="pull-left  terms">
            *<a href="#modal">
              <span class="text-muted">Terms &amp; Conditions</span>

            </a>
          </p>

          <br>

        </div>
      </div>
    </div>
  </section>
  <section id="footer" class="bg-darkgrey">
    <div class="container">
      {include file="lab/organisms/footer/footer-main.tpl"}
    </div>
  </section>

  <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
    <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
    <div>
      {include file="pages/landing/{$domain}/terms/sport/nl200/{$lang}/terms.tpl"}
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

    {literal}
    $('footer > div').addClass('main-wrapper');
    {/literal}
  </script>
{/block}