{extends file="base/base.tpl"}

{if $realDomain == 'netbetch'}
    {$lang_option = true}
    {$languages = ['de' => 'DE', 'fr' => 'FR']}
{/if}

{assign "lpconf" "{$smarty.current_dir}/{$lang}/lp.conf"}
{config_load file=$lpconf}

{block name=title}
    Netbet - {$product}
{/block}
{block name=head}
    <link href="{URL::to('/')}/src/css/main.css" rel="stylesheet">
    <link href="{$asset}/app.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Rajdhani:700" rel="stylesheet">

    <style>
      .free-bet-offer span {
        font-size: 5em;
        color: #ffffff;
        text-transform: uppercase;
      }
      #banner .free-bet-offer button {
        margin-top: 0;
        float: right;
        margin-top: .5em;
        margin-bottom: .5em;
        line-height: 1.4;
      }
    </style>


{/block}

{block name=body}
   <section id="main-nav">
       <nav class="navbar black-transparent navbar-fixed-top">
           <div class="container">
               {include file="lab/organisms/nav/nav-main.tpl" text=#text#}
           </div>
       </nav>
   </section>

   <section id="main-content">
      <video id="advert" muted autoplay poster="{$asset}/img/clear.png" class="fullscreen-bg__video embed-responsive-item hidden-xs hidden-sm" >
          <source src="{$asset}/img/netbetaden.mp4" type="video/mp4">
      </video>
        <div class="fullscreen-bg"></div>
        <div class="container">
            <div class="row price-wrapper text-center">
                <div class="col-sm-6 col-sm-offset-6">
                    <div class="main-cta">
                        <div class="justify text-uppercase">
                            <h2 class="text-white text1" >{#text1#}</h2>
                            <h2 class="text-yellow text2" >{#text2#}</h2>
                            <h3 class="text-white text1">{#text3#}</h3>
                        </div>
                        <div >
                            <a href="{$cta.sport}" class="btn-primary btn loaded-y register-cta">{#cta#}</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="banner" class="bg-black hidden-xs hidden-sm">
       <div class="container">
           <div class="row ">
               <div class="col-xs-12">
                   <div class="free-bet-offer">
                       <span class="text-white"> {#geta#} </span>
                       <span class="text-yellow">{#money#}</span>
                       <span class="text-text"> {#bonus#} </span>
                       <button data-promocode="WELCOME50" data-cta-action="same" href="{$cta.casino}" class="btn-primary button loaded-y banner-cta">{#b_button#}</button>

                   </div>
               </div>
           </div>
       </div>
   </section>

    <section id="steps" class="bg-grey">
        <div class="container">
            {include file="lab/organisms/steps/3steps.tpl"
                class='col-xs-12 col-sm-12- col-md-4'
                step1=#step1#
                step2=#step2#
                step3=#step3#
                step1text=#step1text#
                step2text=#step2text#
                step3text=#step3text#
            }
        </div>
    </section>

    {if $lang !== 'ru'}
    <section id="special-offers" class="bg-darkgrey">
        <div class="container">
            <div class="row">
                    <h2 class="text-center text-white section-heading">{#sectionHeading#}</h2>
            </div>
            {include file="lab/organisms/cards/3cards-img.tpl"
                card1heading = #card1heading#
                card2heading = #card2heading#
                card3heading = #card3heading#

                card1img = $asset|cat:'/img/horse.jpg'
                card2img = $asset|cat:'/img/mobilenew.jpg'
                card3img = $asset|cat:'/img/promotions.png'

                card1text = #card1text#
                card2text = #card2text#
                card3text = #card3text#

                card1url = $cta.sport
                card2url = $cta.sport
                card3url = $cta.sport

                button1text =#card1button#
                button2text =#card2button#
                button3text =#card3button#
            }
        </div>


    </section>
    {/if}
    <section id="terms" class="bg-darkgrey">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <a href="" class="text-white">
                       {#terms#}
                    </a>
                </div>
            </div>
            <div class="row hidden ">
                <div class="terms-text">
                   <div class="col-xs-12" style=" font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif">
                       {include file="pages/landing/netbetcom/terms/sport/normal/welcome-offer/{$lang}/welcome-offer.tpl"}
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

{/block}


{block name=footer}
    <script src="{URL::to('/')}/src/js/emodal.js"></script>
    <script type="text/javascript">

        var options = {
            message: $('.terms-text'),
            title: ' ',
            size: eModal.size.lg,
            buttons: [
                {literal}
                {text: 'OK', style: 'btn btn-danger',   close: true},
                {/literal}

            ],

        };
        $( "#terms a" ).click(function(e) {
            e.preventDefault();
            eModal.alert(options);
        });
        $('video').on('ended',function(){
            $(this).hide("2000");
            $('.main-cta').show("slow").css('margin','150px 0');
            $('#videoCta').hide();
            $('#banner').hide("fast");
            $('.text1').show("slow");
            $('.text2').show("slow");
            $('.text3').show("slow");
            $('.terms-wrap').show("slow");
            $('.register-cta').show("slow");

        });
    </script>

{/block}
