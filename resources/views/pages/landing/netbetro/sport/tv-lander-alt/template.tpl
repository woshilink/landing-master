{extends file="base/base.tpl"}

{assign "lpconf" "{$smarty.current_dir}/lp.conf"}
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
        .fullscreen-bg__video {
            position: absolute;
            top: 35%;
            left: 50%;
            width: 100%;
            height: auto;
            min-width: 100%;
            min-height: 100%;
            -webkit-transform: translate(-50%, -50%);
            -moz-transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
            z-index: -1;
        }
        .text1,.text2,.text3, .register-cta{
            display: none;
        }
        .main-cta{
            margin: 650px 0;
        }
        @media only screen and (max-width: 768px) {
            video{ display: none !important; }
            .text1,.text2,.text3, .register-cta{
                display: block;
            }
            .main-cta{
                margin:200px 0 !important;
            }
            #videoCta{
                display: none !important;
            }
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
    <a href="{$cta.sport}" style="text-decoration: none">
        <section id="main-content">
            <video id="advert" muted autoplay poster="{$asset}/img/clear.png" class="fullscreen-bg__video embed-responsive-item" >
                <source src="{$asset}/netbetadro.mp4" type="video/mp4">
            </video>
            <div class="fullscreen-bg"></div>
            <div class="container">
                <div class="row price-wrapper text-center">
                    <div class=" col-xs-12">

                        <div class="main-cta">
                            <div class="justify text-uppercase">
                                <h2 class="text-white text3" >{#text1#}</h2>
                                <h2 class="text-white text2" >{#text2#}</h2>
                                <h3 class="text-yellow text1">{$prize.sport}{#text3#}</h3>
                            </div>
                            <div >
                                <button  class="btn-primary btn loaded-y register-cta center-block">{#cta#}</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="videoCta"  style="background-color: rgba(0,0,0,1) !important;">
           <div class="container">
               <div class="step-wrapper mobile-save" id="offer-2">
                   <div class="row step-holder-wrapper">
                       <div class="free-bet-offer text-center">
                          <div class="col-xs-8">
                              <span class="text-1" style="font-size: 3.5em; line-height: 1.5em; color: #ffffff; text-transform: uppercase">Pariază în siguranță</span>
                              <span class="text-yellow" style="font-size: 3.5em; line-height: 1.5em;"> 1500 RON</span>
                          </div>
                           <div class="col-xs-4">
                               <span data-promocode="NETBET200" data-cta-action="same" target="_blank" class="btn-yellow">PARIAZĂ ACUM</span>
                           </div>
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
    </a>
    <section id="special-offers" class="bg-darkgrey">
        <div class="container">
            <div class="row">
                <h2 class="text-center text-white section-heading">{#sectionHeading#}</h2>
            </div>
            {include file="lab/organisms/cards/3cards-img.tpl"
                card1heading = #card1heading#
                card2heading = #card2heading#
                card3heading = #card3heading#

                card1img = $asset|cat:'/img/dan.jpg'
                card2img = $asset|cat:'/img/mobilenew.jpg'
                card3img = $asset|cat:'/img/promotions.png'

                card1text = #card1text#
                card2text = #card2text#
                card3text = #card3text#

                card1url = $cta.sport
                card2url = $cta.sport
                card3url = $cta.sport

                button1text = #card1button#
                button2text = #card2button#
                button3text = #card3button#
            }
        </div>


    </section>
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
                        {include file="pages/landing/netbetit/terms/sport/welcome-offer/terms.tpl"}
                    </div>
                </div>

            </div>
        </div>
    </section>
    <section id="footer" class="bg-darkgrey">
        <div class="container">
            {include file="lab/organisms/footer/footer-main.tpl"}
        </div>
    </section>
{/block}


{block name=footer}
    <script src="{URL::to('/')}/src/js/emodal.js"></script>
    <script type="text/javascript">

        $('video').on('ended',function(){
            $(this).hide("2000");
            $('.main-cta').show("slow").css('margin','200px 0');
            $('#videoCta').hide();
            $('.text1').show("slow");
            $('.text2').show("slow");
            $('.text3').show("slow");
            $('.register-cta').show("slow");

        });

        var options = {
            message: $('.terms-text'),
            title: " ",
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
    </script>

{/block}