{extends file="base/base.tpl"}
{block name=title}NETBET Casino{/block}

{block name=head}

    <!-- Bootstrap -->
    <link href="{$asset}/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/main.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">
    <style>
        .main {
            background-image: url('{$asset}/img/bg.jpg');
        }
        .offscreen{
            position: absolute;
            margin-top: -5000px;
        }
        footer{
            color: grey;
        }
        .footer-desc{
            font-size: 10PX;
        }
        .footer-desc a{
            color: lightgrey;
        }
    </style>
{/block}

{block name=body}
    <nav>
        <div class="container">
            {include file="lab/organisms/nav/nav-main.tpl" }
        </div>
    </nav>

    <a href="{$cta.casino}" rel="nofollow">
        <section class="mobile visible-xs">
            <img src="{$asset}/img/mobile.jpg" alt="" class="img-responsive center-block">
            <div class="button text-center">

                <!--             	<div  class="CTA-button center-block ">BET NOW</div>-->

            </div>
        </section>
        <section class="main hidden-xs">
            <div class="container-fluid">
            </div>
            <!-- end of main container -->
        </section>
    </a>
    <!-- end of main section -->

    <footer id="footer" >
        <div class="container-fluid wrapper-1170">
            {include
                file="lab/organisms/footer/footer-main.tpl"
                responsible_text_header=$content.responsible_text_header
                payment_text_header=$content.payment_text_header
                payment_methods=$content.payment_methods
                responsibles=$content.responsibles
            }
        </div>
    </footer>
    <!-- end of footer -->
{/block}

{block name=footer}
    <script src="src/js/remodal.min.js"></script>
{/block}

