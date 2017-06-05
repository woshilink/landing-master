{extends file="base/base.tpl"}
{block name=title}
    Netbet Vegas
{/block}
{block name=head}
    <link href="src/css/main.css" rel="stylesheet">
    <link href="{$asset}/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">
    <style>
        .tc:hover{
            color: #fff;
        }
        {if $lp == 'marvel'}
        .main {
            background-image: url('{$asset}/bg.jpg');
        }
        {else}
        .main {
            background-image: url('{$asset}/bg.jpg');
        }
        {/if}


        /* Small Devices, Tablets */
        @media only screen and (max-width : 767px) {
            .main {
                background-image: none;
            }
        }

        .offscreen{
            position: absolute;
            margin-top: -5000px;
        }
        .terms{
            display: none;
        }
    </style>
{/block}
{block name=body}
    <section class="header">
        <nav class="navbar">
            <div class="container-fluid">

                    {include file="lab/organisms/nav/nav-main.tpl"}

            </div>
        </nav>
    </section>
    <!-- End of header  -->

    <section class="main ">


        <div class="container-fluid hidden-xs">
            <div class="row">
                <div class="col-xs-7 col-sm-5 pull-right">
                    <a href="{$cta.vegas}" rel="nofollow">
                        <div class="offer" >
                            <!-- Add offer here-->
                            {if $lp == 'marvel'}
                                <img src="{$asset}/offer.png" class="img-responsive pull-right" />
                            {else}
                                <img src="{$asset}/offer.png" class="img-responsive pull-right" />
                            {/if}
                        </div>
                    </a>
                    <p class="text-center"><a style="color: #fff; text-shadow: 1px 1px #000;" href="#modal" class="tc">New player only, 10 no deposit Free Spins, Welcome Bonus up to £500, £10+ Deposit required, 50x wagering and T&Cs apply</a></p>
                </div>
            </div>
            <!-- end of offer row -->
            <div class="row">
                <div class="col-xs-7 pull-right">

                </div>

            </div>
            <!-- end of button row -->

        </div>
        <!-- end of main container -->
        <div class="container-fluid">
            <div class="row text-center">
                <!--<span style="color: #ffffff; text-shadow: 1px 1px #000;">New player only, 10 no deposit Free Spins, Welcome Bonus up to £500, £10+ Deposit required, 50x wagering and T&Cs apply</span>-->
            </div>
        </div>
    </section>
    <a href="{$cta.vegas}" rel="nofollow">
        <section class="mobile visible-xs">
            <div class="container-fluid">
                <div class="row">

                    <div class="col-xs-12">
                        {if $lp == 'marvel'}
                            <img src="{$asset}/mobile.jpg" class="img-responsive center-block" />
                            <img src="{$asset}/offer-mobile.png" class="img-responsive center-block" />
                        {else}
                            <img src="{$asset}/mobile.jpg" class="img-responsive center-block" />
                            <img src="{$asset}/offer-mobile.png" class="img-responsive center-block" />
                        {/if}

                    </div>
                    <p class="text-center"><a style="color: #fff; text-shadow: 1px 1px #000;" href="#modal" class="tc">New player only, 10 no deposit Free Spins, Welcome Bonus up to £500, £10+ Deposit required, 50x wagering and T&Cs apply</a></p>
                </div>
            </div>
        </section>
        <!--  End of mobile section -->
    </a>
    <!-- end of main section -->

    <a href="{$cta.vegas}" rel="nofollow">
        <section class="steps-sec">
            <div class="container-fluid">
                <div class="row visible-xs">
                    <div class="text-center">
                        <h3>{$text}</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="steps">
                        <div class="container-fluid">

                            <div class="row">
                                <div class="col-xs-12 hidden-xs">
                                    {if $lp == 'marvel'}
                                        <img src="{$asset}/steps.png" alt="" class="img-responsive center-block">
                                    {else}
                                        <img src="{$asset}/steps.png" alt="" class="img-responsive center-block">
                                    {/if}
                                </div>
                            </div>
                            <!-- end of lage screen steps -->


                        </div>

                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-12 visible-xs">
                        {if $lp == 'marvel'}
                            <img src="{$asset}/steps_mobile.png" alt="" class="img-responsive center-block">
                        {else}
                            <img src="{$asset}/steps_mobile.png" alt="" class="img-responsive center-block">
                        {/if}
                    </div>
                </div>
                <!-- end of small sreen steps -->

            </div>

        </section>
    </a>
    <!-- end of steps section -->
    <section class="tc">
        <div class="container-fluid">
            <div class="row">
                <div  class="col-xs-12">
                    <a href="#modal">

                        <span>* Terms &amp; Conditions</span>

                    </a>
                </div>
            </div>
        </div>
    </section>

    <footer id="footer" >
        <div class="container">
            {include
            file="lab/organisms/footer/footer-main.tpl"
            responsible_text_header=$content.responsible_text_header
            payment_text_header=$content.payment_text_header

            }
        </div>
    </footer>

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

