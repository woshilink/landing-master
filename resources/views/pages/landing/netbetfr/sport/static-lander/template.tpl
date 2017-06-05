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
        .fullscreen-bg{
            position: fixed;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            overflow: hidden;
            z-index: -100;
            background-image: url('{$asset}/bg.jpg');
            background-position: center top;
        }

        @media only screen and (max-width : 992px) {
            .fullscreen-bg{

                background-position: right top;
            }
        }
    </style>


{/block}

{block name=body}

    <section id="main-nav">
        <nav class="navbar black-transparent navbar-fixed-top">

            <div class="container">
                {include file="lab/organisms/nav/nav-main.tpl" text=#text# domain='netbet'}
            </div>

        </nav>
    </section>
    <section id="main-content">
        <div class="fullscreen-bg"></div>
        <div class="container">
            <div class="row price-wrapper text-center">
                <div class="col-xs-12 col-md-6 pull-right">
                    <div class="main-cta">
                        <div class="justify text-uppercase">
                            <h2 class="text-yellow text1" >{$prize}{#text1#}</h2>
                            <h2 class="text-white text2" >{#text2#}</h2>
                        </div>
                        <div >
                            <a href="{$cta.sport}" class="btn-primary btn loaded-y register-cta">{#cta#}</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    {if $domain == 'netbetfr'}
       <section id="legal" >
           <div class=" licence hidden-xs">
               <div class="container">
                   <div class="row">
                       <p class="text-white text-center"> {$legal_text}</p>
                   </div>
               </div>
           </div>
       </section>
    {/if}
    <a href="{$cta.sport}">
    <section id="steps" class="bg-grey">
        <div class="container">
            {include file="lab/organisms/steps/3steps.tpl"
                class='col-xs-12 col-sm-12- col-md-4'
                step1=#step1#
                step2=#step2#
                step3=#step3#
                step1text=#step1text#
                step2text=#step2text#
                step3text=#step3text#|cat:' <span>'|cat:$prize|cat:' €*</span> offerts'
            }
        </div>
    </section>
    </a>
    {*only netbet.fr mush include licence text at the top of landing*}
    <section id="special-offers" class="bg-darkgrey">
        <div class="container">
            <div class="row">
                <h2 class="text-center text-white section-heading">{#sectionHeading#}</h2>
            </div>
            {include file="lab/organisms/cards/3cards-img.tpl"
            card1heading = #card1heading#
            card2heading = #card2heading#
            card3heading = #card3heading#

            card1img = 'src/img/box/ruiznew.png'
            card2img = 'src/img/box/mobilefr.jpg'
            card3img = 'src/img/box/promotions.png'

            card1text = #card1text#
            card2text = #card2text#
            card3text = #card3text#

            card1url = $cta.sport
            card2url = $cta.sport
            card3url = $cta.sport

            button1text ='<img src="src/img/arrow/yellow-right-arrow.png" height="18" width="18">&nbsp;&nbsp;INSCRIVEZ-VOUS'
            button2text ='<img src="src/img/arrow/yellow-right-arrow.png" height="18" width="18">&nbsp;&nbsp;INSCRIVEZ-VOUS'
            button3text ='<img src="src/img/arrow/yellow-right-arrow.png" height="18" width="18">&nbsp;&nbsp;INSCRIVEZ-VOUS'
            }
        </div>
    </section>
    <section id="footer" class="blue-footer text-center">
        <div class="container">
            <div class="row hidden ">
                <div class="terms-text">
                    <div class="col-xs-12" style=" font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif">
                        {include file="pages/landing/netbetit/terms/sport/welcome-offer/terms.tpl"}
                    </div>
                </div>

            </div>
            <div class="row">
                <div class="col-xs-12">
                    <a style="color:#fff;font-size:0.7em;text-decoration:underline; text-align:center; font-family: sans-serif; margin-left: auto; margin-right: auto; display: block;margin-bottom: 8px;" href="http://www.livepartners.fr/affiliate/tracking/click/?id=&amp;bid=1933&amp;source=landing&amp;lang=fr&amp;tag=a_4139b_2" rel="nofollow">
                        *Conditions sur NetBet.fr
                    </a>
                </div>
            </div>

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
        $(".licence").hide();
        $(".licence").insertAfter("nav .container").show();

    </script>

{/block}