{extends file="layout.tpl"}
{block name=title}{$name} {$title}{/block}
{block name=head}
  <link rel="icon" type="image/png" href="favicon.ico">
  <!-- Bootstrap -->
  <link href="800-ron/src/css/bootstrap.min.css" rel="stylesheet">
  <link href="footer.css" rel="stylesheet">

  <link href="../template/templates/{$product}/{$lp}/app.css" rel="stylesheet">
  <link rel="stylesheet" href="800-ron/src/css/remodal.css">
  <link rel="stylesheet" href="800-ron/src/css/remodal-default-theme.css">
  <link href="//fonts.googleapis.com/css?family=Oswald:400,700,300" rel="stylesheet" type="text/css">
  <link href="//fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700" rel="stylesheet">
   <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries-->
   <!--if lt IE 9-->
   <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
   <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

  <style media="screen">
    .main-content{
      background-image: url('../template/templates/{$product}/{$lp}/bg.jpg');


      background-repeat: no-repeat;
      height: auto;
    }
    #steps{
          color: white;
    }
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
  <nav>
    <div class="container-fluid wrapper">
      {include file="partial/nav/_nav.tpl"}
    </div>
  </nav>

  <section class="main-content">
    <div class="container-fluid ">
      <div class="row">
        <div class="col-xs-12 col-sm-4 col-md-5 col-lg-5 hidden-xs hidden-sm hidden-md">
          <img class="toons img-responsive center-block" src="../template/templates/{$product}/{$lp}/toons.png" alt=""/>
          <img class="slot img-responsive center-block" src="../template/templates/{$product}/{$lp}/slot.gif" alt=""/>
        </div>
        <div class="col-xs-12 col-sm-offset-2 col-sm-8 col-md-offset-4 col-md-4 col-lg-2 col-lg-offset-0">
          <div class="offer-container">
            <div class="offer text-center ">
              <h3>{#offer#}</h3>
              <h2>{#prize#}</h2>
            <form class="center-block" id="form1">

                {$array = ['fname' => 'Nume', 'lname' =>'Prenume', 'email' => 'E Mail' , 'phone' => 'Telefon mobile']}


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
            step1text=''
            step2text=''
            step3text=''
          }

        </a>
      </div>
    </div>
    </section>
  </section>



    {include file="footer_casino.tpl"}



  {include file="partial/modal/_remodal.tpl"}
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="800-ron/src/js/remodal.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.19.0/TweenMax.min.js"></script>
  <script type="text/javascript">
    $(function(){
          $("#modal1Desc").load("terms.html");
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
      data.lang = 'ro';
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


  var registrationVersion = 'https://api.netbet.ro/auth/';

  var registrationRedirectionUrl1 = "{$url}";


  $(document).ready(function(){
    $('#button1').click(function(){
      setPrefilledRegistrationData(registrationVersion, registrationRedirectionUrl1, '#form1');
    });
  });

  </script>

{/block}
