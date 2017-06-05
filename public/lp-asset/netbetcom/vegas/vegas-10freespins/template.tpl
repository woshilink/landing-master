{extends file="layout.tpl"}

{block name=title}{$name} {$title}{/block}
{block name=head}
  <link rel="icon" type="image/png" href="favicon.ico">
  <!-- Bootstrap -->
  <link href="landing/marvel/src/css/bootstrap.min.css" rel="stylesheet">
  <link href="footer.css" rel="stylesheet">
  <link href="../template/templates/vegas/{$lp}/styles.css" rel="stylesheet">
  <link rel="stylesheet" href="landing/marvel/src/css/remodal.css">
  <link rel="stylesheet" href="landing/marvel/src/css/remodal-default-theme.css">
  <style media="screen">
    .main {
      background-image: url('../template/templates/vegas/{$lp}/bg.jpg');
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
  <nav class="navbar">
    <div class="container-fluid">
    {include file="partial/nav/_navMobileMid.tpl"}
    </div>
  </nav>
  <a href="{$url}" rel="nofollow">
  <section class="main ">


    <div class="container-fluid hidden-xs">
      <div class="row">
        <div class="col-xs-7 col-sm-5 pull-right">

          <div class="offer" >
              <!-- Add offer here-->
          <img src="../template/templates/vegas/{$lp}/{$lang}/offer.png" class="img-responsive pull-right" />

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
          <img src="../template/templates/vegas/{$lp}/mobile.jpg" class="img-responsive center-block" />
          <img src="../template/templates/vegas/{$lp}/{$lang}/offer-mobile.png" class="img-responsive center-block" />

        </div>
      </div>
    </div>
  </section>
  <!--  End of mobile section -->
  </a>

  <a href="{$url}" rel="nofollow">
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
                      <img src="../template/templates/vegas/{$lp}/{$lang}/steps.png" alt="" class="img-responsive center-block">
                  </div>
              </div>
              <!-- end of lage screen steps -->
            </div>
          </div>
        </div>

        <div class="row">
            <div class="col-xs-12 visible-xs">
                <img src="../template/templates/vegas/{$lp}/{$lang}/steps-mobile.png" alt="" class="img-responsive center-block">
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

  {include file="partial/footer/_footerSelector.tpl" }
  {include file="partial/modal/_remodal.tpl"}
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="landing/marvel/src/js/bootstrap.min.js"></script>
  <script src="landing/marvel/src/js/remodal.min.js"></script>
  <script>
    $(function(){
          $("#modal1Desc").load("../template/templates/{$product}/{$lp}/{$lang}/terms.html");
    });
  </script>

  <div class="template sr-only">
		<p>{$smarty.template}</p>
	</div>
{/block}
