{extends file="base/netbet-base.tpl"}
{block name=title}{$name} {$title}{/block}

{block name=head}
<link href="//fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300italic,700&amp;subset=latin,cyrillic" rel="stylesheet" type="text/css">
<link href="{$resource}/style.css" rel="stylesheet">
<link rel="stylesheet" href="src/css/remodal.css">
<link rel="stylesheet" href="src/css/remodal-default-theme.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js" async></script>
 <link href='//fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
 <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
   <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
   <!--[if lt IE 9]>
     <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
     <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
   <![endif]-->

 <style media="screen">
    #main{
      background-image: url('{$resource}/bg.jpg');
      background-size: cover;
    }
    @media only screen and (max-width : 767px) {
      #main{
          background-image: none;
      }
    }
 </style>
{/block}
{block name=body}
    {assign "lpconf" "{$smarty.current_dir}/lp.conf"}
    {config_load file=$lpconf}

    <nav>
        <div class="container">
            {include file="lab/organisms/nav/nav-main.tpl" text='NEW CUSTOMER OFFER'}
        </div>
    </nav>
  <a href="{$cta.poker}">
  <section id="mobile" class="visible-xs">
    <img src="{$resource}/bg-mobile.jpg" alt="PLAY POKER" class="img-responsive" />
  </section>
  <section id="main">
    <div class="container-fluid">

      <div class="row">
          <div class="col-xs-12 col-sm-7 col-md-5 col-lg-4 pull-right">
            <div class="offer text-center">
              {include file="lab/molecules/textBox/_textBox.tpl" text=#offerText#}

            </div>
            <div class="infoText text-center">
              {include file="lab/molecules/textBox/_textBox.tpl" text=#infoText#}
            </div>
          </div>
      </div>
      <div class="row">
          <div class="col-xs-12 col-sm-7 col-md-5 col-lg-4 pull-right">
            <div class="text-center">
              {include file="lab/molecules/button/_button.tpl" text=#buttonText#}
            </div>

          </div>
      </div>
    </div>
  </section>
      <section class="mid-payment bg-grey-dark">
          <div class="container-fluid wrapper-1170">
              {include file="lab/organisms/extra/paypal-bitcoin.tpl"}
          </div>
      </section>

  <section id="steps">
    <div class="container-fluid">
      <div class="row">
        <div class="col-xs-12">
          <img src="{$resource}/steps.png" alt="STEPS" class="center-block img-responsive hidden-xs" />
          <img src="{$resource}/steps_mobile.png" alt="STEPS" class="center-block img-responsive visible-xs" />
        </div>

      </div>
    </div>
  </section>
</a>
    <footer id="footer" >
        <div class="container-fluid wrapper-1170">
            <div class="row terms">
                <div class="col-xs-11 ">
                    <br>
                    <p class="pull-left  terms">
                        *<a href="#modal">
                            <span>Terms &amp; Conditions</span>

                        </a>
                    </p>

                    <br>

                </div>
            </div>
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
            {include file="pages/landing/netbetcouk/terms/casino/welcome-offer/terms.tpl"}
        </div>
        <!-- loadind terms from terms from Jquery -->
        <br>
        <button data-remodal-action="confirm" class="remodal-confirm">OK</button>
    </div>
    <!-- end of modal pop up -->




<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="landing/viva/src/js/bootstrap.min.js" async></script>
<script src="landing/viva/src/js/remodal.min.js" async></script>

 <script>
     $(function(){
        $("#modal1Desc").load("{$resource}/terms.html");
      });

      $(".button  .CTA-button").addClass('shiny-button');
</script>

{/block}
