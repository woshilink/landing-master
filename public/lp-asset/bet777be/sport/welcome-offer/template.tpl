{extends file="base/base.tpl"}
{assign "lpconf" "{$smarty.current_dir}/{$lang}/lp.conf"}
{config_load file=$lpconf}

{block name=title}{$name} {$title}{/block}

{block name=head}
  <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
  <link href="freebet100/src/css/bootstrap.min.css" rel="stylesheet">
  <link href="footer_{$lang}.css" rel="stylesheet">
  <link href="template/templates/sport/{$lp}/style.css" rel="stylesheet">
  <link href="src/css/remodal.css" rel="stylesheet">
  <link href="src/css/remodal-default-theme.css" rel="stylesheet">
  <style media="screen">
  .content{
    background-image: url('template/templates/sport/{$lp}/{$lang}/img/bg.jpg');
  }
  </style>
{/block}

{block name=body}

  {$languages = ['en' => 'English','nl' => 'Nederlands','fr' => 'Français']}
  {include file="lab/organisms/nav/nav-main.tpl" languages=$languages}
  <a href="{$url}">
  <section class="content hidden-xs">
    <div class="container">
      <div class="row">
        <div class="col-xs-3 col-sm-3 col-md-4 col pull-right">
          <div class="button">
            <img src="template/templates/sport/{$lp}/{$lang}/img/btn.png" class="img-responsive center-block" alt="">
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class="mobile visible-xs">
    <img src="template/templates/sport/{$lp}/{$lang}/img/mobile.jpg" class="img-responsive center-block" alt="">
  </section>
  <section class="steps">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <img src="template/templates/sport/{$lp}/{$lang}/img/steps.png" class="img-responsive center-block hidden-xs" alt="">
          <img src="template/templates/sport/{$lp}/{$lang}/img/steps-mobile.png" class="img-responsive center-block visible-xs"alt="">
        </div>
      </div>

    </div>
  </section>
  </a>
  <div class="container">
    {include file="lab/organisms/footer/footer-main.tpl" }
    <!-- /////////////////////////////////////////////start of nl footer /////////////////////-->
  </div>

{/block}

{block name="footer"}
  <script src="//rawgit.com/saribe/eModal/master/dist/eModal.min.js"></script>
  <script type="text/javascript">
      var options = {
      message: '{#terms#}',
      title: '{#terms_title#}',
      size: 'sm',
      buttons: [
        {
            text: '{#close#}', style: 'danger',   close: true
        }
      ]
    };

    $( "footer .footer-text a" ).click(function() {
      eModal.alert(options);
    });
  </script>
{/block}