{extends file="base/base.tpl"}

{assign "lpconf" "{$smarty.current_dir}/lp.conf"}
{config_load file=$lpconf}

{block name=title}Netbet Vegas{/block}
{block name=head}
    <!-- Bootstrap -->
    <link href="src/css/main.css" rel="stylesheet">
    <link href="{$asset}/style.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">

    <style>
        .main {
            background-image: url('{$asset}/bg.jpg');
        }
        @media only screen and (max-width : 768px) {
            .main {
                background-image: url('{$asset}/bg-mobile.jpg');
                background-size: 100% 100%;
            }
        }
        .offscreen{
            position: absolute;
            margin-top: -5000px;
        }
    </style>
{/block}

{block name=body}
    <section id="main-nav">
        <nav class="navbar black-transparent">
            <div class="container">
                {include file="lab/organisms/nav/nav-main.tpl" text=$text}
            </div>
        </nav>
    </section>

    <!-- end of NAV -->

    <a href="{$cta.vegas}" rel="nofollow">
        <section class="main">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-5 ">


                    </div>
                </div>
                <!-- end of offer row -->
                <div class="row">
                    <div class="col-xs-6 col-sm-5 ">
                        <div class="button">
                            <img src="{$asset}/button.png" class="img-responsive center-block" alt="">


                        </div>
                    </div>

                </div>
                <!-- end of button row -->

            </div>
            <!-- end of main container -->

        </section>
    </a>
    <!-- end of main section -->
    <!-- end of main section -->

    <a href="{$cta.vegas}" rel="nofollow">
        <section class="steps">
            <div class="container-fluid">
                <div class="row visible-xs">
                    <div class="text-center">
                        <h3>{$text}</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 hidden-xs">
                        <img src="{$asset}/steps.png" alt="" class="img-responsive center-block">
                    </div>
                </div>
                <!-- end of lage screen steps -->

                <div class="row">
                    <div class="col-xs-12 visible-xs">
                        <img src="{$asset}/steps_mobile.png" alt="" class="img-responsive center-block">
                    </div>
                </div>
                <!-- end of small sreen steps -->
            </div>

        </section>
    </a>
    <!-- end of steps section -->

    <section id="terms">
       <div class="container">
           <div class="row terms">
               <div class="col-xs-11 col-lg-offset-1 hidden-xs">
                   <br>
                   <p class=" hidden-xs terms">
                       *<a href="#modal">
                           <span class="text-white">Termeni și condiții</span>

                       </a>
                   </p>

                   <br>

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
        <button data-remodal-action="confirm" class="remodal-confirm">OK</button>
    </div>
    <!-- end of modal pop up -->





{/block}
{block name=footer}
    <script src="src/js/remodal.min.js"></script>

{/block}




