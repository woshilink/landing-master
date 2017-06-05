{extends file="base/base.tpl"}
{block name=title}
    Netbet Casino
{/block}
{block name=head}
    <link rel="stylesheet" href="{$asset}/css/casino.css">
    <link rel="stylesheet" href="src/css/main.css">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">
    <script type="text/javascript"> var device_is_mobile = false; </script>
    <script type="text/javascript" src="{$asset}/js/general.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Maxymiser script start -->

    <script type="text/javascript" src="//service.maxymiser.net/cdn/com.netbet/js/mmapi.js"></script>
    <style>
        #footer{
            margin-top: 35px;
        }
    </style>

{/block}
{block name=body}
<!-- body start -->
<!--TEMPLATE START-->
<!--header start-->
<section id="main-nav">
    <nav class="navbar black-transparent">
        <div class="container">
            {include file="lab/organisms/nav/nav-main.tpl" text=$text}
        </div>
    </nav>
</section>
<!--header end--> <!--content start-->
<div class="content-holder main-slider" id="slider">
    <div class="my-content">
        <div class="main-cta-wrapper">
            <div class="main-cta">
                <div class="justify">

                    <h1 class="text-1"></h1>
                    <h2 class="text-2" style="font-size: 3em; font-family: 'MS PGothic', sans-serif;">初回入金額を2倍 </h2>
                    <h2 class="text-3" style="font-size: 2.5em; font-family: 'MS PGothic', sans-serif;">最大</h2>
                    <h3 class="text-4">&dollar;200</h3>
                    <a href="{$url}" class="button yellow" style="font-family: 'MS PGothic', sans-serif;">今すぐプレイ</a>
                    <a target="_blank" href="https://casino.netbet.com/en/welcome_bonus_en" class="terms" style="font-family: 'MS PGothic', sans-serif;">利用規約</a>

                </div>
            </div><div class="slider-wrapper">
                <img src="{$asset}/img/img-3.png" data-depth="0.12" class="img-4 layer" id="img-4" />
                <img src="{$asset}/img/img-4.png" data-depth="0.08" class="img-3 layer" id="img-3" />
                <img src="{$asset}/img/img-2.png" data-depth="0.04" class="img-2 layer" id="img-2" />
                <img src="{$asset}/img/img-1.png" data-depth="0.03" class="img-1 layer" id="img-1" />
            </div>    </div>

        <!--footer start-->


        <!--footer end--><div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
            <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
            <div>
                <p id="modal1Desc"></p>
            </div>
            <!-- loadind terms from terms from Jquery -->
            <br>
            <button data-remodal-action="confirm" class="remodal-confirm">OK</button>
        </div>
    </div>
</div>
    <section id="steps">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 ">
                    <div class="step">
                        <div class="number">1</div>
                        <div class="text">
                            <h4 class="heading" style="letter-spacing: 0; font-family: 'MS PGothic', sans-serif;">登録</h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 ">
                    <div class="step">
                        <div class="number">2</div>
                        <div class="text">
                            <h4 class="heading" style="letter-spacing: 0; font-family: 'MS PGothic', sans-serif;">入金</h4>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 ">
                    <div class="step">
                        <div class="number">3</div>
                        <div class="text">
                            <h4 class="heading" style="letter-spacing: 0; font-family: 'MS PGothic', sans-serif;">プレー</h4>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </section>


    <section id="footer" class="bg-darkgrey">
        <div class="container">
            {include file="lab/organisms/footer/footer-main.tpl"
            responsible_text_header = '安全と信頼'
            payment_text_header = 'お支払い方法'
            }
        </div>
    </section>

    <!--TEMPLATE END-->
    {/block}
    {block name=footer}


        <script src="{$asset}/js/move.js"></script>
        <!-- body end -->
        <script>

            $(function(){
                $("#modal1Desc").load("{$lang}/terms.html");
            });

        </script>
    {/block}






