{extends file="layout.tpl"}
{block name=title}{$name} {$title}{/block}
{block name=head}
  <link rel="icon" type="image/png" href="favicon.ico">
  <!-- Bootstrap -->
  <link href="landing/enhancement/src/css/bootstrap.min.css" rel="stylesheet">
  <link href="footer.css" rel="stylesheet">

  <link href="../template/templates/sport/{$lp}/app.css" rel="stylesheet">
  <link href="landing/enhancement/src/css/remodal.css" rel="stylesheet">
  <link href="landing/enhancement/src/css/remodal-default-theme.css" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Oswald:400,700,300" rel="stylesheet" type="text/css">
  <link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
   <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries-->
   <!--if lt IE 9-->
   <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
   <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

  <style media="screen">
    .main-content{
      background-image: url('../template/templates/sport/{$lp}/bg.jpg');
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
        background-image: url('../template/templates/sport/{$lp}/mobile-bg.jpg');
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
  <nav>
    <div class="container-fluid main-wrapper">
      {if $countryCode == 'CHE'}
        {include file="partial/nav/nav-ch.tpl"}
      {else}
        {include file="partial/nav/_nav.tpl"}
      {/if}
    </div>
  </nav>
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
              <img src="../template/templates/sport/{$lp}/mobile.png" alt="" class="mobile-img visible-xs center-block img-responsive">

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
                  <img src="../template/templates/sport/{$lp}/mobile.png" alt="" class="mobile-img visible-xs center-block img-responsive">
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

  {include file="partial/footer/_footerSelector.tpl"}

  {include file="partial/modal/_remodal.tpl"}
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="landing/enhancement/src/js/jquery.countdown.min.js"></script>
  <script src="landing/enhancement/src/js/remodal.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.19.0/TweenMax.min.js"></script>


  <script type="text/javascript">
    $(function(){
      {if $lang == 'nl'}
        $("#modal1Desc").load("nl/terms-200.html");
      {else}
        $("#modal1Desc").load("../template/templates/sport/{$lp}/terms.html");
      {/if}

    });
    {literal}
    $('footer > div').addClass('main-wrapper');
    {/literal}
  </script>


{/block}
