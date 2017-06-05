{extends file="base/base.tpl"}



{block name=title}{$name} {$title}{/block}

{block name=head}
  <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
  <link href="{$asset}/style.css" rel="stylesheet">
  <link href="src/css/remodal.css" rel="stylesheet">
  <link href="src/css/remodal-default-theme.css" rel="stylesheet">
  <style media="screen">
  .content{
    background-image: url('{$asset}/{$lang}/img/bg-alt.jpg');
  }
  .mobile{
    background-image: url('{$asset}/{$lang}/img/mobile-alt.jpg');
  }
  .step-1 {
      background-image: url('{$asset}/{$lang}/img/step1.png'); background-size: cover; height: 192px;
  }
  .step-2 {
      background-image: url('{$asset}/{$lang}/img/step2.png'); background-size: cover; height: 192px;
  }
  .step-3 {
      background-image: url('{$asset}/{$lang}/img/step3.png'); background-size: cover; height: 192px;
  }
  hr {
      margin-top: 20px;
      margin-bottom: 20px;
      border: 0;
      border-top: 1px solid #eee;
  }
  </style>
{/block}

{block name=body}

    {assign "lpconf" "{$smarty.current_dir}/{$lang}/lp.conf"}
    {config_load file=$lpconf}
    {* activate co brand logo in the middle of nav bar when when parameter logo=somelogo pass in the url*}
    {$lang_dropdown == true}
     {$languages = ['en' => 'EN','nl' => 'NL','fr' => 'FR']}
               <div class="container">
                   {include file="lab/organisms/nav/nav-main.tpl"  languages=$languages lang_dropdown=true}
               </div>

  <a href="{$cta.casino}">
  <section class="content  hidden-xs">
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-6 col pull-right" style="text-align: center; text-decoration: none;">
          <span class="text-1">{$smarty.config.text1}</span>
          <span class="text-2">{$smarty.config.text2}</span>
          <span class="text-3">{$smarty.config.text3}</span>
          <div class="button">
            <a href="{$cta.casino}">{#signup#}</a>
            <!--<img src="{$asset}/{$lang}/img/btn.png" class="img-responsive center-block" alt="">-->
          </div>
        </div>
      </div>
    </div>
  </section>
  <section class="mobile visible-xs" style="text-align: center;">
          <!--<img src="template/templates/casino/welcome-offer-alt/nl/img/offer.png" class="img-responsive center-block" alt="" />-->
          <span class="text-1">25 GRATIS SPINS</span>
          <span class="text-2">TOT </span>
          <span class="text-3">€100 GRATIS</span>
        <div class="button">
        <a href=" {$cta.casino}">REGISTREREN</a>
        <!--<img src="template/templates/casino/welcome-offer-alt/nl/img/btn.png" class="img-responsive center-block" alt="">-->
      </div>
    </section>
      <a href="{$cta.casino}">
  <section class="steps">

    <div class="container">
      <div class="row">
      <a href="{$cta.casino}">
       <div class="col-sm-12 col-md-4">
         <div class="step-1">
           <div class="number">1</div>
           <h5>{#step1#}</h5>
         </div>
       </div>
       <div class="col-sm-12 col-md-4">
         <div class="step-2">
           <div class="number">2</div>
           <h5>{$smarty.config.step2}</h5>
         </div>
       </div>
      <div class="col-sm-12 col-md-4">
         <div class="step-3">
           <div class="number">3</div>
           <h5>{$smarty.config.step3}</h5>
         </div>
     </div>

</div>
      </a>

    </div>
  </section>
  <section class="">
    <div class="container">
      <div class="row">
       <div class="col-sm-12 col-md-4">
         <a href="{$cta.casino}">
         <div class="upsell-1">
           <h5>{$smarty.config.upsell1}</h5>
           <span class="play-now">{$smarty.config.play}</span>
         </div>
        </a>
       </div>
       <div class="col-sm-12 col-md-4">
         <a href="{$cta.casino}">
         <div class="upsell-2">
           <h5>{$smarty.config.upsell2}</h5>
           <span class="play-now">{$smarty.config.play}</span>
         </div>
         </a>
       </div>
       <div class="col-sm-12 col-md-4">
         <a href="{$cta.casino}">
         <div class="upsell-3">
           <h5>{$smarty.config.upsell3}</h5>
           <span class="play-now">{$smarty.config.play}</span>
         </div>
         </a>
       </div>
     </div>

    </div>
  </section>
  </a>
    <section id="legal">
        <div class="container">
            <div class="row">
              <col-xs-12>
                  <p class="footer-blurb text-center">
                      {#legaltext#}
                  </p>
              </col-xs-12>
            </div>
            <hr>
        </div>
    </section>
  <div class="container">
    {include file="lab/organisms/footer/footer-main.tpl" }
    <!-- /////////////////////////////////////////////start of nl footer /////////////////////-->
  </div>

{/block}

{block name="footer"}
  <script src="//rawgit.com/saribe/eModal/master/dist/eModal.min.js"></script>
  <script type="text/javascript">
      var options = {
      message: '{#terms#}',
      title: '{#terms_title#}',
      size: 'sm',
      buttons: [
        {
            text: '{#close#}', style: 'danger',   close: true
        }
      ]
    };

    $( "footer .footer-text a" ).click(function() {
      eModal.alert(options);
    });
  </script>
{/block}
