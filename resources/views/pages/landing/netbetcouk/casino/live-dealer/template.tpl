{extends file="base/base.tpl"}
{block name=title}
   Netbet Casino
{/block}
{block name=head}

    <link href="src/css/main.css" rel="stylesheet">
    <link href="{$asset}/styles.css" rel="stylesheet">
    <link href="src/css/animate.css" rel="stylesheet">

    <style>
        .main {
            background-image: url('{$asset}/bg.jpg');
        }
        .offscreen{
            position: absolute;
            margin-top: -5000px;
        }
        .terms{
            display: none;
        }
        .terms-link a{
            color: white;
            text-decoration: none;
        }
        .terms-link a:hover{
            color: dimgray;
            text-decoration: none;
        }
        {if $lp == 'roulette'}
        .steps-d {
            margin-top: 385px;
        }
        {/if}
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

    <a href="{$cta.casino}" rel="nofollow">
        <section class="mobile visible-xs">
            <div class="container-fluid">
                <div class="row">

                    <div class="col-xs-12">
                        <img src="{$asset}/mobile.jpg" class="img-responsive center-block" />


                    </div>
                </div>
            </div>
        </section>
        <!--  End of mobile section -->

        <section class="main hidden-xs">
            <div class="container-fluid">
                <div class="row">
                    <div class="{if $lp=='live-dealer'}col-xs-10{else} col-xs-12{/if}">
                        <div class="text">
                            <img src="{$asset}/text.png" class="img-responsive center-block" />
                        </div>

                    </div>
                    <!-- end of offer row -->


                </div>
                <!-- end of main container -->
                <div class="row">
                    <div class="steps-d">
                        <div class="col-xs-8 hidden-xs">
                            <img src="{$asset}/steps1.png" alt="" class="img-responsive center-block">
                        </div>
                        <div class="col-xs-4 hidden-xs">
                            <img src="{$asset}/steps2.png" alt="" class="img-responsive center-block animated  20sec" style="margin-top: 2px;">
                        </div>
                    </div>
                </div>
                <!-- end of lage screen steps -->

        </section>
    </a>
    <!-- end of main section -->
    <div class="container-fluid">
        <div class="row text-center" style="margin-top: 15px;">
            <span style="color: #ffffff;">{$legal_txt}</span>
        </div>
    </div>
    <a href="{$cta.casino}" rel="nofollow">
        <section class="steps-m">
            <div class="container-fluid">
                <div class="row visible-xs">
                    <div class="text-center">
                        <h3>{$text}</h3>
                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-12 visible-xs">
                        <img src="{$asset}/steps-m1.png" alt="" class="img-responsive center-block">
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 visible-xs">
                        <img src="{$asset}/steps-m2.png" alt="" class="img-responsive center-block">
                    </div>
                </div>
                <!-- end of small sreen steps -->

            </div>

        </section>
    </a>
    <!-- end of steps section -->
    <section class="terms-link">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12">
                    <a target="blank" href="https://help.netbet.co.uk/casino/conditions">
                        <span>* Terms &amp; Conditions</span>
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


{/block}
{block name=footer}

    <script>

        function animate() {
            $(".20sec").toggleClass("bounce");
            setTimeout(animate, 2000);

        }
        animate();
    </script>
{/block}



