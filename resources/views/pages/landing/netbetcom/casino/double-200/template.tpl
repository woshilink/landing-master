{extends file="base/base.tpl"}

{if $realDomain == 'netbetch'}
    {$lang_option = true}
    {$languages = ['ch-de' => 'de', 'ch-fr' => 'fr']}
{/if}

{assign "lpconf" "{$smarty.current_dir}/{$lang}/lp.conf"}
{config_load file=$lpconf}

{block name=title}
    Netbet - {$product}
{/block}
{block name=head}
    <link href="{URL::to('/')}/src/css/main.css" rel="stylesheet">
    <link href="{$asset}/{$lang}/app.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Rajdhani:700" rel="stylesheet">
    <style>
        .nav-tabs{
            border-bottom:0;
        }
        .nav-tabs  li a{
            padding: 21px;
            text-transform: uppercase;
        }
        .nav-tabs  li a  img{
            width: 25px;
        }

        .nav-tabs  li  a{
            color: white;
            display: inline-block;
            vertical-align: middle;
            -webkit-transform: translateZ(0);
            transform: translateZ(0);
            box-shadow: 0 0 1px rgba(0, 0, 0, 0);
            -webkit-backface-visibility: hidden;
            backface-visibility: hidden;
            -moz-osx-font-smoothing: grayscale;
            position: relative;
            overflow: hidden;
            background: rgba(0, 0, 0, 0.82);
            -webkit-transition-property: color;
            transition-property: color;
            -webkit-transition-duration: 0.3s;
            transition-duration: 0.3s;

            padding: 15px;
            border-radius: 0%;
            border: 0px ;
            border-bottom-color: transparent;
            cursor: pointer;
        }
        .nav-tabs  li  a:before{
            content: "";
            position: absolute;
            z-index: -1;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: dimgrey;
            -webkit-transform: scale(0);
            transform: scale(0);
            -webkit-transition-property: transform;
            transition-property: transform;
            -webkit-transition-duration: 0.3s;
            transition-duration: 0.3s;
            -webkit-transition-timing-function: ease-out;
            transition-timing-function: ease-out;
            border: 0 ;
            border-bottom-color: transparent;
            cursor: pointer;
            padding: 15px;
            border-radius: 0;

        }
        .nav-tabs > li.active > a, .nav-tabs > li.active > a:hover, .nav-tabs > li.active > a:focus {
            background-color: grey;
            border: 0;
            border-bottom-color: transparent;
            cursor: pointer;
            padding: 15px;
            border-radius: 0;
            color: white;
        }
        .nav-tabs > li> a:hover, .nav-tabs > li> a:focus, .nav-tabs > li> a:active {
            background-color: transparent;
            border-color: 0;
            border: 0px ;
            border-bottom-color: transparent;
            cursor: pointer;
            padding: 15px;
            border-radius: 0;
            color: #fff;

        }
        .nav-tabs li a:hover:before, .nav-tabs li a:focus:before, .nav-tabs li a:active:before {
            -webkit-transform: scale(2);
            transform: scale(2);
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
    <section id="main-content">
        <div class="fullscreen-bg"></div>
        <div class="container">
            <div class="row price-wrapper text-center">
                <div class=" col-xs-12 col-sm-12 col-md-6 pull-right">
                    <div class="main-cta">
                        <a href="{$cta.casino}" style="text-decoration: none">
                        <div class="justify text-uppercase">
                            <h2 class="text1">{#text1#}</h2>
                            <h2 class="text2">{#text2#}</h2>
                            <h3 class="text3">{#text3#}</h3>
                        </div>
                        </a>
                        <div class="button" >
                            <a href="{$cta.sport}" class="btn-primary btn loaded-y register-cta">{#cta#}</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-6 pull-right">
                    <a href="" class="text-white center-block text-center tc">
                        {#terms#}
                    </a>
                </div>
            </div>
        </div>
    </section>
    <a href="{$cta.casino}">
    <section id="steps" >
        <div class="container">
            {include file="lab/organisms/steps/3steps.tpl"
                class=#stepsGrid#
                stepNumberClass=#stepNumberClass#
                stepTextClass=#stepTextClass#
                step1=#step1#
                step2=#step2#
                step3=#step3#
                step1text=#step1text#
                step2text=#step2text#
                step3text=#step3text#
            }
        </div>
    </section>
    </a>
   {if $lang == 'de' || $lang == 'fr' || $lang == 'ru' || $lang == 'es'}
   {else}
       <section id="special-offers" class="bg-white">
           <div class="container">
               <div class="row">
                   <h2 class="text-center text-grey-dark section-heading">{#sectionHeading#}</h2>
               </div>
               {include file="lab/organisms/cards/3cards-img.tpl"
               card1heading = #card1heading#
               card2heading = #card2heading#
               card3heading = #card3heading#

               card1img = $asset|cat:'/img/live-dealers.jpg'
               card2img = $asset|cat:'/img/casino-mobile.jpg'
               card3img = $asset|cat:'/img/promotions-new.jpg'

               card1text = #card1text#
               card2text = #card2text#
               card3text = #card3text#

               card1url = $cta.casino
               card2url = $cta.casino
               card3url = $cta.casino

               button1text = #card1button#
               button2text = #card2button#
               button3text = #card3button#
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
                       {include file="pages/landing/{$domain}/terms/{$product}/welcome-offer/{$lang}/terms.tpl"}
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
            size: eModal.size.md,
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
        $( ".tc" ).click(function(e) {
            e.preventDefault();
            eModal.alert(options);
        });
    </script>

{/block}