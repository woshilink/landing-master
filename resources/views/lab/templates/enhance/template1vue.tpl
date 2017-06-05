{extends file="base/base.tpl"}
{block name=title} {$title} {/block}
{block name=head}

    <link href="{$asset}/app.css" rel="stylesheet">
    <link href="src/css/main.css" rel="stylesheet">
    <link href="src/css/remodal.css" rel="stylesheet">
    <link href="src/css/remodal-default-theme.css" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Montserrat|Oswald" rel="stylesheet" type="text/css">

    <style media="screen">
        @import url(https://fonts.googleapis.com/css?family=Roboto+Condensed:400|Roboto:100);

        .block {
            display: flex;
            flex-direction: column;
            margin: 20px;
        }

        .text {
            color: #1abc9c;
            font-size: 40px;
            font-family: 'Roboto Condensed', serif;
            font-weight: 40;
            margin-top:10px;
            margin-bottom: 10px;
            text-align: center;
        }

        .digit {
            color: #ecf0f1;
            font-size: 150px;
            font-weight: 100;
            font-family: 'Roboto', serif;
            margin: 10px;
            text-align: center;
        }
        .step p {
            color: #FFF3F3;
            font-size: 1.1em;
        }
        .container-fluid{
            padding-left: 0;
            padding-right: 0;
        }
        .time-text {
            padding-bottom: 5px;
        }
        #logo img{
            padding: 10px;
        }

        @media only screen and (max-width : 767px) {
            .heroContainer{
                background-color: black;
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

    <div class="container-fluid heroContainer">
        <a href="{$link}">
            <section class="teamOffert" id="app">
                    <Countdown date="May 31, 2017"></Countdown>
                <div class="row maxWidth">
                    <div class="col-xs-12 hidden-xs">
                        <img src="{$asset}/offer.png" alt="" class="img-responsive center-block" />
                    </div>
                    <div class="col-xs-12 visible-xs">
                        <img src="{$asset}/offer-mobile.png" alt="" class="img-responsive center-block" />
                    </div>
                </div>

            </section>
    </div>

    <div class="container">
        <div class="row">
            <section id="steps">
                <div class="col-xs-12 hidden-xs">
                    <img src="{$asset}/Steps-DSK.jpg" alt="" class="img-responsive center-block" />
                </div>
                <div class="col-xs-12 visible-xs">
                    <img src="{$asset}/Steps-Mobile.jpg" alt="" class="img-responsive center-block" />
                </div>
            </section>
        </div>
    </div>
    </a>
    <span class="sr-only">

    </span>
    <section id="footer" class="bg-darkgrey">
        <div class="container">
            {include file="lab/organisms/footer/footer-main.tpl"}
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

{literal}
    <!-- Vue templates -->
    <template id="countdown-template">
        <div>
            <div class="block">

                <p class="digit">{{ days | two_digits }}</p>
                <p class="text">Days</p>
            </div>
            <div class="block">
                <p class="digit">{{ hours | two_digits }}</p>
                <p class="text">Hours</p>
            </div>
            <div class="block">
                <p class="digit">{{ minutes | two_digits }}</p>
                <p class="text">Minutes</p>
            </div>
            <div class="block">
                <p class="digit">{{ seconds | two_digits }}</p>
                <p class="text">Seconds</p>
            </div>
        </div>
    </template>
    <!-- Vue templates -->
{/literal}
{/block}

{block name="footer"}
    <script src="src/js/remodal.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/vue/1.0.28/vue.min.js"></script>
    <script src="{$asset}/timer.js"></script>

{/block}