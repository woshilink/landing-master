{extends file="base/base.tpl"}
{block name=title}{$name} {$title}{/block}
{block name=head}


  <link href="{$asset}/app.css" rel="stylesheet">
  <link rel="stylesheet" href="src/css/remodal.css">
  <link rel="stylesheet" href="src/css/main.css">
  <link rel="stylesheet" href="src/css/remodal-default-theme.css">
  <link href="//fonts.googleapis.com/css?family=Oswald:400,700,300" rel="stylesheet" type="text/css">
  <link href="//fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700" rel="stylesheet">


  <style media="screen">
    .main-content{
      background-image: url('{$asset}/bg.jpg');


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
  <section id="main-nav">
    <nav class="navbar black-transparent navbar-fixed-top">
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
        <a href="{$cta.casino}">

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

  <section id="terms">
    <div class="container">
      <div class="row ">
        <div class="col-xs-11  ">
          <br>
          <p>
            *<a href="#modal">
              <span class="text-white">Termeni și condiții</span>

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
      {include file="pages/landing/{$domain}/terms/{$product}/800ron/terms.tpl"}
    </div>
    <!-- loadind terms from terms from Jquery -->
    <br>
    <button data-remodal-action="confirm" class="remodal-confirm">OK</button>
  </div>



{/block}
{block name="footer"}

  <script src="src/js/remodal.min.js"></script>

  <script type="text/javascript">
    $(function(){
      $("#modal1Desc").load("terms.html");
    });
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

    var registrationRedirectionUrl1 = "{$cta.casino}";


    $(document).ready(function(){
      $('#button1').click(function(){
        setPrefilledRegistrationData(registrationVersion, registrationRedirectionUrl1, '#form1');
      });
    });

  </script>
{/block}