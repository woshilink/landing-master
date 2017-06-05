{extends file="base/base.tpl"}
{block name=title}
    Editable title of landing pages
{/block}
{block name=head}
     <link href="src/css/main.css" rel="stylesheet">
  <link href="src/css/remodal.css" rel="stylesheet">
  <link href="src/css/remodal-default-theme.css" rel="stylesheet">
  <link href="{$asset}/app.css" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Oswald:400,700,300" rel="stylesheet" type="text/css">
  
  <style media="screen">
    #logo{
      padding: 10px;
    }
    .custom-text h4{
        height: 50px;
        line-height: 50px;
    }
    .middlePaypal, .middlePayment {

      margin-bottom: 60px;
    }
    .cta-offer {
        width: 87%;
    }
    #main{
      background-image: url('{$asset}/bg.jpg');

      width: 100%;
      text-align: center;
      color: #fff;
      z-index: -1;
      background-position:top;
      -webkit-background-size: cover;
      -moz-background-size: cover;
      background-size: cover;
      background-repeat: no-repeat;
    }

    #main .button{
      margin-top: 4%;
    }
    #mobile .container .col-xs-12{
      padding: 0;
    }

    .step p {
      color: #FFF3F3;
    }
    .container-fluid{
      padding-left: 0;
      padding-right: 0;
    }
    .spiner{
      margin-top: -300px;
    }
    #terms a {
      color: #999999;
    }
    @media only screen and (min-width : 1601px) {
      .spiner{
        margin-top: -335px;
      }
    }
    @media only screen and (max-width : 1200px) {
      .spiner{
        margin-top: -245px;
      }
        .cta-offer {

            width: 70%;
        }
    }
    @media only screen and (max-width : 992px) {
      .spiner{
        margin-top: 0;
      }
        .cta-offer {
            margin-top: -6em;
            width: 83%;
        }
    }
    @media only screen and (max-width : 767px) {
      .heroContainer{
        background-color: black;
      }
      #logo img{
        max-width:  150px;
      }
    }
    
  </style>
{/block}
{block name=body}
{assign "lpconf" "{$smarty.current_dir}/lp.conf"}
    {config_load file=$lpconf}

        
<section id="main-nav">
    <nav class="navbar black-transparent ">
        <div class="container">
            {include file="lab/organisms/nav/nav-main.tpl" text=$text}
        </div>
    </nav>
</section>


  <section id="main" class="hidden-xs">
    <div class="container">
      <div class="row">

          <div class="col-xs-12 col-sm-6 pull-right">
            <div class="offer">
                <a href="{$cta.casino}">
              <img src="{$asset}/offer.png" alt="OFFER" class="img-responsive center-block"/>
              
              <img src="{$asset}/cta.gif" alt="CTA" class="img-responsive center-block cta-offer" />
                </a>
              <span style="color: #ffffff;">18+ | New Players Only | £10+ Deposit Required | 30x Wagering | <a href="#modal" style="color: white; text-decoration: underline">T&amp;Cs</a> apply</span>
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
        </div>
      </div>
    </div>
  </section>
  <span style="color: #ffffff;" class="visible-xs text-center">18+ | New Players Only | £10+ Deposit Required | 30x Wagering | <a href="#modal" style="color: white; text-decoration: underline">T&amp;Cs</a> apply</span>
  <div class="middlePayment">
  <div class="col-md-6 col-sm-12 leftPayment">
    <img src="src/img/payment-1.png" alt="Pay with PayPal" />
  </div>
  <div class="col-md-6 col-sm-12 rightPayment">
    <img src="src/img/payment-2.png" alt="Pay with Bitcoin" />
  </div>
</div>

  <a href="{$cta.casino}">
    <section id="steps">
      <div class="container">
        <div class="row">
          <div class="col-xs-12">
            <img src="{$asset}/steps.png" alt="Steps" class="img-responsive hidden-xs center-block"/>
            <img src="{$asset}/steps-mobile.jpg" alt="Steps" class="img-responsive visible-xs"/>
          </div>
        </div>
      </div>
    </section>
  </a>

  
  <section id="terms" class="bg-darkgrey">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <a href="#modal" class="text-white">
                        {#terms#}
                    </a>
                </div>
            </div>
            <div class="row hidden ">
                <div class="terms-text">
                    <div class="col-xs-12" style=" font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif">
                        {include file="pages/landing/netbetcouk/terms/casino/vip-upgrade/terms.tpl"}
                    </div>
                </div>

            </div>
        </div>
  </section>
  <section id="footer" class="bg-darkgrey">
        <div class="container">
            {include file="lab/organisms/footer/footer-main.tpl"
            responsible_text_header = #responsible_text_header#
            payment_text_header = #payment_text_header#
            payment_methods = $content.payment_methods
            responsibles = $content.responsibles
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
        <button data-remodal-action="confirm" class="remodal-confirm">OK</button>&nbsp;
    </div>
  <!-- end of modal pop up -->
{/block}
{block name=footer}

  <script src="src/js/remodal.min.js"></script>
  <script type="text/javascript">

    $('footer>div').removeClass('container-fluid');
    $('footer>div').addClass('container');

    var width = $(window).width();
    if ((width <= 768) ) {
      $('#logo').removeClass('col-xs-6').addClass('col-xs-12')
      $('#logo img').removeClass('pull-left').addClass('center-block');
    }
  </script>
{/block}




      
      



 
