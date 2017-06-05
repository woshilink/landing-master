{extends file="layout.tpl"}
{block name=title}{$name} {$title}{/block}
{block name=head}
  <link rel="icon" type="image/png" href="favicon.ico">
  <!-- Bootstrap -->
  <link href="template/templates/sport/{$lp}/app.css" rel="stylesheet">
  <link href="footer.css" rel="stylesheet">
  <link href="landing/enhancement/src/css/remodal.css" rel="stylesheet">
  <link href="landing/enhancement/src/css/remodal-default-theme.css" rel="stylesheet">
  <!--<link href="landing/enhancement/src/css/bootstrap.min.css" rel="stylesheet">-->
  <!--<link href="https://fonts.googleapis.com/css?family=Montserrat|Oswald" rel="stylesheet" type="text/css">-->
   <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries-->
   <!--if lt IE 9-->
   <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
   <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <script>document.createElement( "picture" );</script>
  <script src="landing/enhancement/src/js/picturefill.min.js" async></script>

  <style media="screen">
    .step p {
      color: #FFF3F3;
      font-size: 1.1em;
    }
    .container-fluid{
      padding-left: 0;
      padding-right: 0;
    }
    .time-text {
      padding-bottom: 5px;
    }
    .logo {
      padding-top: 15px;
    }
    #logo img{
      padding: 10px;
    }
    @media only screen and (max-width : 767px) {

      .heroContainer{
        background-color: black;

      }
    }
  </style>
{/block}
{block name=body}

{$languages = ['en' => 'English','nl' => 'Nederlands','fr' => 'Français']}
{include file="lab/organisms/nav/nav-main.tpl" languages=$languages}

<!--<div class="container">
  <div class="row">
    {include file="partial/nav/_nav.tpl"}
  </div>
</div>-->


{assign "lpconf" "{$smarty.current_dir}/{$lang}/lp.conf"}
{config_load file=$lpconf}
  <div class="container-fluid heroContainer">
      <a href="{$url}">
        <section class="teamOffert">
          {include file="partial/picturefill/_two-size.tpl"}

          <div class="row maxWidth teams timerSection wrapper__top">
            {include file="partial/timer/_timer.tpl"}
          </div>
          {include file="partial/enhancement/_twoteam_3.tpl"}
          {include file="partial/enhancement/_TwoOdds_2.tpl"}
          {include file="partial/enhancement/_offerPlus_3.tpl"}

        </section>
  </div>
  <div class="container">
    <section id="steps">
      {include file="partial/steps/_steps-conf-alt.tpl"}
    </section>
  </div>
  </a>
  <div class="container">
    <a href="#modal" style="margin-top: 1em;">T&C*</a>
  </div>
  {include file="footer_{$lang}_v1.tpl"}
  {include file="partial/modal/_remodal.tpl"}
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="landing/enhancement/src/js/jquery.countdown.min.js"></script>
  <script src="landing/enhancement/src/js/remodal.min.js"></script>
  <script src="landing/enhancement/src/js/bootstrap.min.js"></script>
  <script type="text/javascript">
  $('#timer').countdown({
      date: '11/09/2016 19:44:59',
      offset: +1,
      day: 'D',
      days: 'D',
      hour: 'H',
      hours: 'H',
      minute: 'M',
      minutes: 'M',
      second: 'S',
      seconds: 'S'
    }, function () {
      alert('Done!');
    });

    $(function(){
          $("#modal1Desc").load("template/templates/sport/{$lp}/{$lang}/terms.html");
    });
    $('footer div').removeClass('container-fluid');
    $('footer div').addClass('container');
  </script>
{/block}
