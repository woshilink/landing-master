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
  <script>document.createElement( "picture" );</script>
  <script src="landing/enhancement/src/js/picturefill.min.js" async></script>
  <style media="screen">
    .main-content{
      background-image: url('../template/templates/sport/{$lp}/bg.jpg');
      background-position: top;
      background-repeat: no-repeat;
    }
  </style>
{/block}
{block name=body}
{assign "lpconf" "{$smarty.current_dir}/lp.conf"}
{config_load file=$lpconf}
  <nav>
    <div class="container-fluid main-wrapper">
      {include file="partial/nav/_nav.tpl"}
    </div>
  </nav>
  <a href="{$url}">
  <section class="main-content hidden-xs">
    <div class="container">
      <div class="row">

        <div class="col-xs-12">
          <div class="offer text-center">

            <div class="row">

              <div class="col-xs-12 col-sm-12 col-md-8">
                <h1>{#offer_text#}</h1>
              </div>

              <div class="col-xs-12 col-sm-12 col-md-4">
                <button class="btn btn-black" type="button" name="button">
                  <span>{#cta#}</span>
                </button>
              </div>

            </div>
            {* <img src="../template/templates/sport/{$lp}/offer.png" alt="offer" class="center-block img-responsive" /> *}
          </div>

        </div>
      </div>
    </div>

  </section>
  <section class="mobile-content visible-xs">
    <div class="container-fluid main-wrapper">
      <div class="row">
        <img src="../template/templates/sport/{$lp}/mobile.jpg" alt="" class="center-block img-responsive">
      </div>
    </div>
  </section>
  <section class="steps-content">
    <div class="container-fluid main-wrapper">

        {include file="lab/organisms/steps/3steps.tpl"
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

  {include file="footer_sport.tpl"}

  {include file="partial/modal/_remodal.tpl"}
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="landing/enhancement/src/js/jquery.countdown.min.js"></script>
  <script src="landing/enhancement/src/js/remodal.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.19.0/TweenMax.min.js"></script>

  {literal}
  <script type="text/javascript">
    $(function(){
          $("#modal1Desc").load("terms.html");
    });
    $('footer > div').addClass('main-wrapper');
  </script>

  {/literal}
{/block}
