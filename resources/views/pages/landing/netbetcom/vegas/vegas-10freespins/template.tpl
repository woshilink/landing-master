{extends file="base/base.tpl"}

{block name=title}{$name} {$title}{/block}
{block name=head}
  <link rel="icon" type="image/png" href="favicon.ico">
  <!-- Bootstrap -->
  <link href="src/css/bootstrap.min.css" rel="stylesheet">
  <link href="src/css/main.css" rel="stylesheet">
  <link href="{$asset}/styles.css" rel="stylesheet">
  <link rel="stylesheet" href="src/css/remodal.css">
  <link rel="stylesheet" href="src/css/remodal-default-theme.css">
  <style media="screen">
    .main {
      background-image: url('{$asset}/bg.jpg');
    }
    .terms{
       display: none;
     }
     #logo img {
       width: 150px;
     }
  </style>
{/block}

{block name=body}
    <section id="main-nav">
        <nav class="navbar bg-black navbar-fixed-top">
            <div class="container">
                {include file="lab/organisms/nav/nav-main.tpl" text=#text#}
            </div>
        </nav>
    </section>
  <a href="{$cta.vegas}" rel="nofollow">
  <section class="main ">


    <div class="container-fluid hidden-xs">
      <div class="row">
        <div class="col-xs-7 col-sm-5 pull-right">

          <div class="offer" >
              <!-- Add offer here-->
          <img src="{$asset}/{$lang}/offer.png" class="img-responsive pull-right" />

          </div>
        </div>
      </div>
      <!-- end of offer row -->
    </div>
  <!-- end of main container -->

  </section>
   <section class="mobile visible-xs">
    <div class="container-fluid">
      <div class="row">

        <div class="col-xs-12">

          <img src="{$asset}/mobile.jpg" class="img-responsive center-block" />
          <img src="{$asset}/{$lang}/offer-mobile.png" class="img-responsive center-block" />

        </div>
      </div>
    </div>
  </section>
  <!--  End of mobile section -->
  </a>

  <a href="{$cta.vegas}" rel="nofollow">
    <section class="steps-sec">
      <div class="container-fluid">
        <div class="row visible-xs">
          <div class="text-center">
              <h3>{$text}</h3>
          </div>
        </div>
        <div class="row">
           <div class="steps">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-xs-12 hidden-xs">
                      <img src="{$asset}/{$lang}/steps.png" alt="" class="img-responsive center-block">
                  </div>
              </div>
              <!-- end of lage screen steps -->
            </div>
          </div>
        </div>

        <div class="row">
            <div class="col-xs-12 visible-xs">
                <img src="{$asset}/{$lang}/steps-mobile.png" alt="" class="img-responsive center-block">
            </div>
        </div>
         <!-- end of small sreen steps -->
      </div>
    </section>
  </a>
  <section class="tc">
    <div class="container-fluid">
      <div class="row">
        <div  class="col-xs-12">
          <a href="#modal">
            {if $lang == 'de'}
                <span>* Teilnahmebedingungen</span>
            {elseif $lang == 'ro'}
                <span>* Termeni și condiții</span>
            {elseif $lang == 'nl'}
                <span>* Algemene voorwaarden</span>
            {elseif $lang == 'fr'}
                <span>* Conditions Générales</span>
            {elseif $lang == 'el'}
                <span>* Όροι και Συνθήκες</span>
            {elseif $lang == 'ru'}
                <span>* Условия и Положения</span>
            {elseif $lang == 'es'}
                <span>* Términos y condiciones</span>
            {else}
                <span>* Terms &amp; Conditions</span>
            {/if}
          </a>
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
        <div class="text-left">
            {include file="pages/landing/{$domain}/terms/vegas/welcome-offer/{$lang}/terms.tpl"}
        </div>
        <!-- loadind terms from terms from Jquery -->
        <br>
        <button data-remodal-action="confirm" class="remodal-confirm">OK</button>
    </div>
    <!-- end of modal pop up -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>


{/block}

{block name="footer"}
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="src/js/bootstrap.min.js"></script>
    <script src="src/js/remodal.min.js"></script>
{/block}