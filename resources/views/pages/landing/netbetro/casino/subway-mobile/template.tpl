{extends file="base/base.tpl"}

{assign "lpconf" "{$smarty.current_dir}/lp.conf"}
{config_load file=$lpconf}

{block name=title}
    Netbet - {$product}
{/block}
{block name=head}
    <link href="{URL::to('/')}/src/css/main.css" rel="stylesheet">
    <link href="{$asset}/app.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Rajdhani:700" rel="stylesheet">
    <style>
        .fullscreen-bg{

            background-image: url('{$asset}/bg.jpg');

        }

        .button-wrapper {
            margin: 2.44444em 0 2.22222em 0;
        }
    </style>

{/block}

{block name=body}
    <section id="main-nav">
        <nav class="navbar black-transparent navbar-fixed-top">
            <div class="container">
                {include file="lab/organisms/nav/nav-main.tpl"}
            </div>
        </nav>
    </section>
    <a href="{$cta.casino}">
    <section id="main-content">
        <div class="fullscreen-bg"></div>
        <div class="container">
            <div class="row price-wrapper text-center">
                <div class="col-xs-12 col-md-5 pull-right">
                    <div class="step-wrapper" style="background-color: rgba(0,0,0,1) !important; opacity: 0;">
                        <div class="row step-holder-wrapper static-lander">
                            <div class="free-bet-offer" style="text-align:center;">
                                <span data-promocode="WELCOME50" data-cta-action="same" href="#tvmodal" class="btn-primary button loaded-y register-cta" style="float: none !important;">Hi</span>
                            </div>
                        </div>
                    </div>
                    <div class="main-cta">

                        <div class="justify text-uppercase">
                            <h2 class="text-red text3"  style="line-height: 1em; font-size: 2.9em;">BONUS DE 100% PÂNĂ LA</h2>
                            <h2 class="text-yellow text2" >800 RON</h2>

                        </div>
                        <div class="button-wrapper" >
                            <button href="{$cta.casino}" class="btn-primary btn loaded-y register-cta">CÂȘTIGĂ ACUM</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="steps" class="bg-grey">
        <div class="container">
            {include file="lab/organisms/steps/3steps.tpl"
                class='col-xs-12 col-sm-12- col-md-4'
                step1=#step1#
                step2=#step2#
                step3=#step3#
                step1text=#step1text#
                step2text=#step2text#
                step3text=#step3text#
            }
        </div>
    </section>
    </a>
    <section id="special-offers" class="bg-darkgrey">
        <div class="container">
            <div class="row">
                <h2 class="text-center text-white section-heading">{#sectionHeading#}</h2>
            </div>
            {include file="lab/organisms/cards/3cards-img.tpl"
                card1heading = #card1heading#
                card2heading = #card2heading#
                card3heading = #card3heading#

                card1img = 'src/img/box/tennis.jpg'
                card2img = $asset|cat:'/img/mobilenew.jpg'
                card3img = 'src/img/box/promotions.png'

                card1text = #card1text#
                card2text = #card2text#
                card3text = #card3text#

                card1url = $cta.sport
                card2url = $cta.casino
                card3url = $cta.sport

                button1text = #card1button#
                button2text = #card2button#
                button3text = #card3button#
            }
        </div>


    </section>
    <section id="terms" class="bg-darkgrey">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <a href="" class="text-white">
                        {#terms#}
                    </a>
                </div>
            </div>
            <div class="row hidden ">
                <div class="terms-text">
                    <div class="col-xs-12" style=" font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif">
                        {include file="pages/landing/netbetit/terms/casino/welcome-offer/terms.tpl"}
                    </div>
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

    <div id="player"></div>
{/block}


{block name=footer}
    <script src="{URL::to('/')}/src/js/emodal.js"></script>
    <script type="text/javascript">

        var options = {
            message: $('.terms-text'),
            title: " ",
            size: eModal.size.lg,
            buttons: [
                {literal}
                {text: 'OK', style: 'btn btn-danger',   close: true},
                {/literal}

            ],

        };
        $( "#terms a" ).click(function(e) {
            e.preventDefault();
            eModal.alert(options);
        });

        $(".card2 .panel > a > img").replaceWith( $("#player") );

        // 2. This code loads the IFrame Player API code asynchronously.
        var tag = document.createElement('script');

        tag.src = "https://www.youtube.com/iframe_api";
        var firstScriptTag = document.getElementsByTagName('script')[0];
        firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

        // 3. This function creates an <iframe> (and YouTube player)
        //    after the API code downloads.
        var player;
        function onYouTubeIframeAPIReady() {
            player = new YT.Player('player', {
                height: '200',
                width: '100%',
                videoId: 'EBLl6JhQlB4',
                playerVars: {
                    autoplay: '1',
                    playlist: 'EBLl6JhQlB4',
                    modestbranding: '1',
                    loop: '1',
                    controls: '0',
                    start: '2',
                    rel : 0
                },
                events: {
                    'onReady': onPlayerReady,
                    'onStateChange': onPlayerStateChange
                }

            });
        }
        // 4. The API will call this function when the video player is ready.
        function onPlayerReady(event) {
            event.target.playVideo();
            event.target.mute();
        }

        // 5. The API calls this function when the player's state changes.
        //    The function indicates that when playing a video (state=1),
        //    the player should play for six seconds and then stop.
        var done = false;
        function onPlayerStateChange(event) {
            if (event.data == YT.PlayerState.PLAYING && !done) {
                setTimeout(stopVideo, 6000);
                done = true;
            }
        }

    </script>

{/block}