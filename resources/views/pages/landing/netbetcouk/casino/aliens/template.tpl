{extends file="base/base.tpl"}
{block name=title}
    {$brand|capitalize} {$product|capitalize} {* Editable title of landing pages *}
{/block}
{block name=head}
    <link href="src/css/main.css" rel="stylesheet">
    <link href="{$asset}/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">

    <style>
        .main {
            background-image: url('{$asset}/{$bg|default:'bg.png'}');
        }
        .offscreen{
            position: absolute;
            margin-top: -5000px;
        }
    </style>
{/block}
{block name=body}
    <section id="main-nav">
        <nav class="navbar black-transparent ">
            <div class="container-fluid">
                {include file="lab/organisms/nav/nav-main.tpl"}
            </div>
        </nav>
    </section>

    <a href="{$cta.casino}" rel="nofollow">
        <section class="main">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-5 col-sm-5 col-md-4">

                        <div class="offer" >
                            <!-- Add offer here-->
                            <img src="{$asset}/offer.png" class="img-responsive " />

                            <!-- End of offer -->
                        </div>
                        <div class="button hidden-xs">
                            <div class="CTA-button">{$button|default:'PLAY NOW'}</div>
                        </div>
                        <!-- end of button  -->
                    </div>



                </div>


            </div>
            <!-- end of main container -->

        </section>
    </a>
    <!-- end of main section -->
    <a href="{$cta.casino}">
        <section class="mobile visible-xs">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-12 text-center">

                        <div class="button" style="margin-top: 10px; margin-bottom: 0px;">
                            <div class="CTA-button center-block">PLAY NOW</div>
                        </div>
                        {if $domain == 'netbetcouk'}
                        <span style="color: #ffffff;">New players only. &pound;10+ deposit required, wagering and T&amp;C apply.</span>
                        {/if}

                    </div>
                </div>
            </div>
        </section>
    </a>
    {if $domain == 'netbetcouk'}
    <div class="container-fluid">
        <div class="row hidden-xs text-center">
            <span style="color: #ffffff;">New players only. &pound;10+ deposit required, wagering and T&amp;C apply.</span>
        </div>
    </div>
    {/if}

    <a href="{$cta.casino}" rel="nofollow">
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
        <div class="container-fluid">
            <div class="row terms">
                <div class="col-xs-11 ">
                    <br>
                    <p class="pull-left terms">
                        *<a href="#modal">
                            <span class="text-white">{$terms|default:'Terms &amp; Conditions'}</span>

                        </a>
                    </p>

                    <br>

                </div>
            </div>
        </div>
    </section>

    <section id="footer" class="bg-darkgrey">
        <div class="container-fluid">
            {include file="lab/organisms/footer/footer-main.tpl"}
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








