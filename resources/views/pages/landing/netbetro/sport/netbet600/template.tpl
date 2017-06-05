{extends file="base/base.tpl"}
{block name=title}
    Netbet {$product|capitalize}
{/block}
{block name=head}
    <link href="src/css/main.css" rel="stylesheet">
    <link href="{$asset}/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">

    <style>
        .main {
            background-image: url('{$asset}/bg.jpg');
        }
        .offscreen{
            position: absolute;
            margin-top: -5000px;
        }
        {if $lp == '1000ron'}
        .box{
            background-color: transparent;
            padding: 117px 0 0px 0;
        }
        .box .offer .offer-text img{
            margin-left: -41px;
        }
        .button{
            margin-top: 0;
        }
        @media only screen and (max-width : 768px) {
            .box{
                padding: 0px 0 0px 0;
            }

        }
        {elseif $lp == 'super-reload'}
        .button {
            margin-top: 95px;
        }
        {elseif $lp == 'casa-pariurilor' || $lp == 'biletul-zilei'}
        .box {
            padding: 123px 0 54px 0;
        }

        {if $lp == 'casa-pariurilor'}
        .logo{
            margin-top: 30px;
        }
        {else}
        .logo{
            margin-top: 7px;
        }
        {/if}

        {/if}

    </style>
{/block}
{block name=body}
    <section id="main-nav">
        <nav class="navbar">
            <div class="container-fluid">
                {include file="lab/organisms/nav/nav-main.tpl" text=$text}
            </div>
        </nav>
    </section>

    <a href="{$cta.sport}" rel="nofollow">
        <section class="main">
            <div class="container-fluid">
                <div class="row ">
                    <div class="col-sm-6 hidden-xs">
                        <div class="text">
                            <img src="{$asset}/text.png" class="img-responsive center-block" alt="">
                        </div>
                    </div>
                    <!-- End of text -->
                    <div class="col-xs-7 col-xs-offset-5  col-sm-4 col-sm-offset-2">

                        <div class="box">
                            <div class="offer" >
                                <div class="offer-text">

                                    <img src="{$asset}/offer.png" class="img-responsive center-block" alt="">



                                </div>

                            </div>
                            <!--  End of offer -->
                            <div class="button">
                                {if $lp == '1000ron'}

                                {else}
                                    <img src="{$asset}/button.png" class="img-responsive center-block" alt="">
                                {/if}
                            </div>
                            <!-- End of button -->
                        </div>


                    </div>
                </div>
                <!-- end of offer row -->

                <div class="row">
                    <div class="col-xs-12 col-lg-4 pull-right">

                    </div>

                </div>
                <!-- end of button row -->

            </div>
            <!-- end of main container -->

        </section>
    </a>
    <!-- end of main section -->

    <section class="text-mobile" >
        <div class="container-fluid">
            <div class="col-xs-12 visible-xs">
                <div class="text">
                    <img src="{$asset}/text.png" class="img-responsive center-block" alt="">
                </div>
            </div>
            <!-- End of text -->
        </div>
    </section>
    <a href="{$cta.sport}" rel="nofollow">
        <section class="steps">
            <div class="container-fluid">
                <div class="row visible-xs">
                    <div class="text-center">
                        <h3>{$text}</h3>
                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-12 hidden-xs">
                        <img src="{$asset}/steps.png" class="img-responsive center-block" alt="">
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
        <div class="container-fluid">
            <div class="row terms">
                <div class="col-xs-11 ">
                    <br>
                    <p class="pull-left  terms">
                        *<a href="#modal">
                            <span class="text-grey-light">Termeni și condiții</span>

                        </a>
                    </p>

                    <br>

                </div>
            </div>
        </div>
    </section>
    <section id="footer" class="bg-darkgrey">
        <div class="container-fluid">
            {include file="lab/organisms/footer/footer-main.tpl"
            responsible_text_header = 'JOC RESPONSABIL'
            payment_text_header = 'METODE DE PLATĂ'
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

{/block}
{block name=footer}

    <script src="src/js/remodal.min.js"></script>

    <script>
        $(function(){
            $("#modal1Desc").load("{$asset}/terms.html");
        });
    </script>

{/block}



