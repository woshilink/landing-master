{extends file="base/base.tpl"}
{block name=title}{$name} {$title}{/block}
{block name=head}
  <link href="{$asset}/app.css" rel="stylesheet">
  <link href="src/css/main.css" rel="stylesheet">
  <link href="src/css/remodal.css" rel="stylesheet">
  <link href="src/css/remodal-default-theme.css" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Oswald:400,700,300" rel="stylesheet" type="text/css">

  <link href="{url('/')}/src/css/main.css" rel="stylesheet">
   <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries-->
   <!--if lt IE 9-->
   <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
   <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>

  <style media="screen">
    #logo{
      padding: 10px;
    }
    .custom-text{
      color: white;
    }
    #main{
      background-image: url('{$asset}/bg.jpg');
      position: relative;
      width: 100%;
      height: 75%;
      text-align: center;
      color: #fff;
      z-index: -1;
      background-position: top center;
      -webkit-background-size: cover;
      -moz-background-size: cover;
      background-size: cover;
    }
    #main .offer img{
      height: 67%;
    }
    #main .button{
      margin-top: 4%;
    }
    #mobile .container .col-xs-12{
      padding: 0;
    }
    .offer{
      margin-top: 3%;
    }
    .step p {
      color: #FFF3F3;
    }
    .container-fluid{
      padding-left: 0;
      padding-right: 0;
    }

    @media only screen and (max-width : 767px) {
      .heroContainer{
        background-color: black;
      }
    }
  </style>
{/block}
{block name=body}
  <nav>
    <div class="container">
      {include file="lab/organisms/nav/nav-main.tpl" text='NEW CUSTOMER OFFER'}
    </div>
  </nav>
  <a href="{$url}">
  <section id="main" class="hidden-xs">
    <div class="container">
      <div class="row">
        <div class="offer">
          <div class="col-xs-12 col-xs-offset-12 col-sm-6 col-sm-offset-3 col-md-6 col-md-offset-3">
            <img src="{$asset}/offer.png" alt="OFFER" class="img-responsive center-block"/>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="button">
          <div class="col-xs-12 col-xs-offset-12 col-sm-4 col-sm-offset-4 col-md-4 col-md-offset-4 col-lg-6 col-lg-offset-3">
            <img src="{$asset}/button.gif" alt="Button" class="img-responsive center-block"/>
            <h4>bonus code: SLOTGOD</h4>
          </div>

        </div>
      </div>
    </div>
  </section>
  <section id="mobile" class="visible-xs">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <img src="{$asset}/mobile.jpg" alt="OFFER" class="img-responsive"/>
          <h4 style="text-align: center; color: white">bonus code: SLOTGOD</h4>
        </div>
      </div>
    </div>
  </section>
  <section id="steps">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <img src="{$asset}/steps.png" alt="Steps" class="img-responsive center-block hidden-xs"/>
          <img src="{$asset}/steps_mobile.png" alt="Steps" class="img-responsive center-block visible-xs"/>
        </div>
      </div>
    </div>
  </section>
  </a>
  <footer id="footer" >
    <div class="container">
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

{/block}
{block name="footer"}
  <script src="src/js/remodal.min.js"></script>
  <script type="text/javascript">


    $(function(){
      $("#modal1Desc").load("{$asset}/terms.html");
    });

  </script>
{/block}