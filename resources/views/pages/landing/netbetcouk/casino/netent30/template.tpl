{extends file="base/base.tpl"}
{block name=title}
    NETBET CASINO
{/block}
{block name=head}

    <link href="{$asset}/styles.css" rel="stylesheet">
    <link href="src/css/main.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <style>
        .main{
            background-image: url('{$asset}/bg.jpg');
        }
        .steps{
            display: none;
        }
        #logo {
            margin: 10px 0;
        }
        #logo img {
            width: 200px;
        }
        @media only screen and (max-width : 767px) {

            .main{


                background-image: none;
            }
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
    <!-- end of header -->
    <section class="mobile">
        <a href="{$cta.casino}" rel="nofollow">
            <div class="container-fluid">
                <div class="row visible-xs">
                    <div class="col-xs-12">
                        <img src="{$asset}/mobile.jpg" class="img-responsive center-block" classalt="Mobile background">
                        {if $lp == 'netent30' || $lp == '30freespins'}
                        {else}
                            <div class="button">
                                <img src="{$asset}/button.png" class="img-responsive center-block" classalt="Mobile background">
                            </div>
                        {/if}

                    </div>
                </div>
                <!-- end of mobile background -->
            </div>
        </a>
    </section>


    <a href="{$cta.casino}" rel="nofollow">
        <section class="main">

            <div class="container">

                <div class="row">
                    <div class="col-xs-5 hidden-xs pull-right">
                        <div class="offer">

                            <img src="{$asset}/offer.png" class="img-responsive center-block" alt="">

                        </div>
                        <!-- end of offer -->
                        {if $lp == 'netent30' || $lp == '30freespins'}
                        {else}
                            <div class="button">
                                <img src="{$asset}/button.png" class="img-responsive center-block" classalt="Mobile background" style="width: 250px;">
                            </div>
                        {/if}
                        <!-- end of button -->
                    </div>

                </div>
                <div class="row" >

                    <div class="col-xs-12 header-text text-center visible-xs">
                        <h3>{$text}</h3>
                    </div>

                </div>
                <!-- end of mobile text -->
            </div>
            <!-- end of container  -->
        </section>
    </a>
    <!-- end of section -->
    <div class="container-fluid">
        <div class="row text-center" style="margin-top: 15px;">
            <span style="color: #ffffff;">{$legal_text}</span>
        </div>
    </div>
    <section class="steps-live">
        <div class="container">

            <div class="row">
                <div class="col-xs-12 hidden-xs">
                    <a href="{$cta.casino}" rel="nofollow">
                        <img src="{$asset}/steps.png" alt="" class="img-responsive center-block">
                    </a>
                </div>
            </div>
            <!-- end of large screen steps -->
            <div class="row">
                <div class="col-xs-12 visible-xs">

                    <a href="{$cta.casino}" rel="nofollow">
                        <img src="{$asset}/steps_mobile.png" alt="" class="img-responsive center-block">
                    </a>
                </div>
            </div>
        </div>
        <!-- end of small screen steps -->
        </div>

    </section>
    <!-- end of steps row -->
    <srction id="terms">
        <div class="container">
            <div class="row terms">
                <div class="col-xs-11 hidden-xs">
                    <br>
                    <p class="pull-left hidden-xs terms">
                        *<a href="#modal">
                            <span class="text-white">Terms &amp; Conditions</span>

                        </a>
                    </p>

                    <br>

                </div>
            </div>
        </div>
    </srction>
    <section id="footer" class="bg-darkgrey">
        <div class="container">
            {include file="lab/organisms/footer/footer-main.tpl"
            responsible_text_header = 'RESPONSIBLE GAMING'
            payment_text_header = 'PAYMENT METHODS'
            }
        </div>
    </section>

    <!-- include footer -->
    <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
        <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
        <div>
            {include file="pages/landing/{$domain}/terms/{$product}/30free-spins/terms.tpl"}
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
            $("#modal1Desc").load("free25spin/{$lp}/terms.html");
        });
    </script>


{/block}






