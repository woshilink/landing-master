{extends file="base/base.tpl"}
{block name=title}{$name} {$title}{/block}

{block name=head}

<!-- Bootstrap -->
<link href="src/css/bootstrap.min.css" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300italic,700&amp;subset=latin,cyrillic" rel="stylesheet" type="text/css">
<link href="src/css/main.css" rel="stylesheet">

<link href="{$asset}/style.css" rel="stylesheet">
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
      background-image: url('{$asset}/bg.jpg');
      background-size: cover;
    }
    .terms-link span{
        color: #fff;
    }
    @media only screen and (max-width : 767px) {
      #main{
          background-image: none;
      }
    }
 </style>
{/block}
{block name=body}

{assign "lpconf" "{$smarty.current_dir}/{$lang}/lp.conf"}
{config_load file=$lpconf}

    <section id="main-nav">
        <nav class="navbar bg-black navbar-fixed-top">
            <div class="container">
                {include file="lab/organisms/nav/nav-main.tpl" text=#text#}
            </div>
        </nav>
    </section>
  <a href="{$cta.poker}">
  <section id="mobile" class="visible-xs">
    <img src="{$asset}/bg-mobile.jpg" alt="PLAY POKER" class="img-responsive" />
  </section>
  <section id="main">
    <div class="container-fluid">

      <div class="row">
          <div class="col-xs-12 col-sm-7 col-md-5 col-lg-4 pull-right">
            <div class="offer text-center">
                <div class="text">
                    <p>
                        {#offerText#}
                    </p>
                </div>
            </div>
            <div class="infoText text-center">
                <div class="text">
                    <p>
                        {#infoText#}
                    </p>
                </div>
            </div>
          </div>
      </div>
      <div class="row">
          <div class="col-xs-12 col-sm-7 col-md-5 col-lg-4 pull-right">
            <div class="text-center">
                <div class="button ">
                    <div class="{$lang}">
                        <div class="CTA-button center-block shiny-button">{#buttonText#}</div>
                    </div>
                </div>
            </div>

          </div>
      </div>
    </div>
  </section>
  <section id="steps">
    <div class="container-fluid">
      <div class="row">
        <div class="col-xs-12">
          <img src="{$asset}/{$lang}/steps.png" alt="STEPS" class="center-block img-responsive hidden-xs" />
          <img src="{$asset}/{$lang}/steps_mobile.png" alt="STEPS" class="center-block img-responsive visible-xs" />
        </div>

      </div>
    </div>
  </section>
</a>
    <section class="terms-link">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12 col-sm-3">
                    <p class="text-center text-white">

                        <a  href="#"  data-toggle="modal" data-target="#myModal" >
                            {if $countryCode == 'CHE'}
                                {if $lang == 'fr'}
                                    <span>* Conditions Générales</span>
                                {else}
                                    <span>* Teilnahmebedingungen</span>
                                {/if}
                            {else}
                                {if $lang == 'de'}
                                    <span>* Teilnahmebedingungen</span>
                                {elseif $lang == 'ro'}
                                    <span>* Termeni și condiții</span>
                                {elseif $lang == 'nl'}
                                    <span>* Algemene voorwaarden</span>
                                {elseif $lang == 'ru'}
                                    <span>* Условия и Положения</span>
                                {elseif $lang == 'fr'}
                                    <span>* Conditions Générales</span>
                                {elseif $lang == 'el'}
                                    <span>* Όροι και Συνθήκες</span>
                                {else}
                                    <span>* Terms &amp; Conditions</span>
                                {/if}
                            {/if}
                        </a>
                    </p>
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
            <p id="modal1Desc"></p>
        </div>
        <!-- loadind terms from terms from Jquery -->
        <br>
        <button data-remodal-action="confirm" class="remodal-confirm">OK</button>
    </div>
    <!-- end of modal pop up -->


    <!-- Modal -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">


                        {include file="pages/landing/netbetcom/terms/{$product}/welcome-offer/{$lang}/terms.tpl"}
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
            </div>
        </div>
    </div>
{/block}

