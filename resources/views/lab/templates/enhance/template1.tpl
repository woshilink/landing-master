{extends file="base/base.tpl"}
{block name=title} {$title} {/block}
{block name=head}
    <link href="{$asset}/app.css" rel="stylesheet">
    <link href="src/css/main.css" rel="stylesheet">
    <link href="src/css/remodal.css" rel="stylesheet">
    <link href="src/css/remodal-default-theme.css" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Montserrat|Oswald" rel="stylesheet" type="text/css">

    <style media="screen">

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
                <div class="timerSection">
                    <div id="timer">
                        <div class="time-text">
                            <span class="text days_text">Day</span>
                            <span class="text hours_text">hrs.</span>
                            <span class="text minutes_text">mins.</span>
                            <span class="text seconds_text">sec.</span>
                        </div>
                        <div class="time-count">
                            <span class="days">01</span>
                            <span class="hours">06</span>
                            <span class="minutes">41</span>
                            <span class="seconds">03</span>
                        </div>

                    </div>
                </div>
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
            <div class="row">
                <div class="col-xs-11 hidden-xs container">
                    <br>
                    <p class="pull-left hidden-xs terms">
                        *<a href="#modal">
                            <span>{#terms#|default:'Terms text'}</span>

                        </a>
                    </p>

                    <br>

                </div>
            </div>

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

    <div class="remodal" data-remodal-id="expired-modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="expriedDec">
        <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
        <div class="expriedDec">
           {#expiredText#|default:'event expired!'}
        </div>
        <!-- loadind terms from terms from Jquery -->
        <br>
        <button data-remodal-action="confirm" class="remodal-confirm">OK</button>
    </div>
    <!-- end of modal pop up -->
{/block}

{block name="footer"}
    <script src="src/js/remodal.min.js"></script>
    <script src="src/js/jquery.countdown.js"></script>

    <script type="text/javascript">
        $('#timer').countdown({
            //  format  04/07/2017 12:35:00
            date: '{$countdownTimer}',
            // +3 for romanion
            offset: {$local},
            day: 'Day',
            days: 'Days',
            hour: 'hr.',
            hours: 'hrs.',
            minute: 'min.',
            minutes: 'mins.',
            second: 'sec.',
            seconds: 'sec.'
        }, function () {
           $("#timer").addClass("hidden");
            var inst = $('[data-remodal-id=expired-modal]').remodal();
            inst.open();

            $(document).on('closed', '.remodal', function (e) {
                window.location.replace("{url('/')}/{$product}");
            });

        });

    </script>


{/block}