{extends file="base/base.tpl"}
{block name=title}{$name} {$title}{/block}
{block name=head}
  <link rel="icon" type="image/png" href="favicon.ico">
  <!-- Bootstrap -->
  <link href="src/css/bootstrap.min.css" rel="stylesheet">
  <link href="src/css/main.css" rel="stylesheet">

  <link href="{$asset}/app.css" rel="stylesheet">
  <link rel="stylesheet" href="src/css/remodal.css">
  <link rel="stylesheet" href="src/css/remodal-default-theme.css">
  <link href="//fonts.googleapis.com/css?family=Oswald:400,700,300" rel="stylesheet" type="text/css">
  <link href="//fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700" rel="stylesheet">
   <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries-->
   <!--if lt IE 9-->
   <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
   <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

  <style media="screen">
    .main-content{
      background-image: url('{$asset}/{$lang}/bg.jpg');


      background-repeat: no-repeat;
      height: auto;
    }
    #steps{
          color: white;
    }
    {if $lang == 'fr'}
      .button .CTA-button {
        font-size: 1.3em;
      }
      .step h5 {
        font-size: 2.4em;
      }
    {elseif $lang == 'nl'}
      .step h5 {
        font-size: 1.9em;
      }
    {/if}
    @media only screen and (max-width : 769px) {
      .step h5 {
        font-size: 1.2em;
      }
      .step .number {
        font-size: 2em;
      }
    }
  </style>
{/block}
{block name=body}
{assign "lpconf" "{$smarty.current_dir}/lp.conf"}
{config_load file=$lpconf}
  <section id="main-nav">
    <nav class="navbar black-transparent">
      <div class="container">
        {include file="lab/organisms/nav/nav-main.tpl" text=$text}
      </div>
    </nav>
  </section>

  <section class="main-content">
    <div class="container-fluid ">
      <div class="row">
        <div class="col-xs-12 col-sm-4 col-md-5 col-lg-5 hidden-xs hidden-sm hidden-md">
          <img class="toons img-responsive center-block" src="{$asset}/toons.png" alt=""/>
          <img class="slot img-responsive center-block" src="{$asset}/slot.gif" alt=""/>
        </div>
        <div class="col-xs-12 col-sm-offset-2 col-sm-8 col-md-offset-4 col-md-4 col-lg-2 col-lg-offset-0">
          <div class="offer-container">
            <div class="offer text-center ">
              <h3>{#offer#}</h3>
              <h2>{#prize#}</h2>
            <form class="center-block" id="form1">

              {$array = ['fname' => 'First Name', 'lname' =>'Last Name', 'email' => 'E Mail' , 'email' => 'E Mail']}
              {include file="lab/molecules/input/inputs-button.tpl" from=$array }
              <div class="button">
                <div  id="button1"class="btn btn-lg CTA-button center-block">{#cta#}</div>
              </div>

            </form>
            </div>
          </div>
        </div>
      </div>
      <div class="row">

      </div>
    </div>
    <section id="steps">
    <div class="container-fluid wrapper">
      <div class="col-xs-12">
        <a href="{$url}">

          {include
            file="lab/organisms/steps/3steps.tpl"
            class=#stepgrid#
            step1=#step1#
            step2=#step2#
            step3=#step3#
            step1text=#step1dec#
            step2text=#step2dec#
            step3text=#step3dec#
          }

        </a>
      </div>
    </div>
    </section>
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
  <script src="free25spin/src/js/remodal.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.19.0/TweenMax.min.js"></script>
  <script type="text/javascript">
    $(function(){
          $("#modal1Desc").load("{$lang}/terms.html");
    });
  </script>

  <script type="text/javascript">


    $('footer div:first-child').removeClass('container-fluid');
    $('footer div:first-child').addClass('container');
  </script>
  <script>
  /*
  * FUNCTION
  */

  function setPrefilledRegistrationData (registrationVersion, registrationRedirectionUrl, formId) {
    var form = $(formId);
    if (form.length > 0) {
      var formData = form.serializeArray();
      var data = {};
      data.website = 'casino';
      data.lang = '{$lang}';
      data.device = 'desktop';
      $.each(formData, function(key, val) {
        data[val.name] = val.value;
      });
      $.ajax({
        url: registrationVersion + 'setPrefilledRegistrationData',
        method: 'POST',
        data: data,
        xhrFields: {
          withCredentials: true
        },
        crossDomain: true,
        success: function() {
          location.href = registrationRedirectionUrl;
        }
      });
    }
  }
  /*
  * CONFIGURATION
  */

  {if $lang == 'de'}
  var registrationVersion = 'https://api.netbet.de/auth/';
  {else}
  var registrationVersion = 'https://api.netbet.com/auth/';
  {/if}
  var registrationRedirectionUrl1 = "https://banners.livepartners.com/click.php?p=120&l={$lang}&t=register{if $id}&id={$id}{/if}{if $postfix}{$postfix}{/if}";


  $(document).ready(function(){
    $('#button1').click(function(){
      setPrefilledRegistrationData(registrationVersion, registrationRedirectionUrl1, '#form1');
    });
  });

  </script>

{/block}
