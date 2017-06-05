{extends file="base/base.tpl"}
{block name=title}
    {$brand|capitalize} {$product|capitalize} {* Editable title of landing pages *}
{/block}
{block name=head}
    {assign "lpconf" "{$smarty.current_dir}/{$lang}/lp.conf"}
    {config_load file=$lpconf}
    <link href="{$asset}/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/main.css">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">

    <style>
        .main {
            background-image: url('{$asset}/{$lang}/bg.jpg');
        }
        .offscreen{
            position: absolute;
            margin-top: -5000px;
        }
        #logo{
            margin: 10px 0;
        }
        #logo img{
            width: 115px;
        }
        .movie{
            background-image: url('{$asset}/{$lang}/frame.png');
            width: 100%;
            height: 37em;
            z-index: -1;
            background-size: 105% 115%;

        }
        @media only screen and (max-width : 767px) {
            .main {
                background-image: none;
            }
            .movie{
                background-image: url('{$asset}/{$lang}/bg-video.png');
                height: 22em;
            }
            .movie .col-xs-12, .main .col-xs-12, .steps-m .col-xs-12{
                padding-right: 0px;
                padding-left: 0px;
            }
        }


    </style>

{/block}
{block name=body}
    <section id="main-nav">
        <nav class="navbar">
            <div class="container-fluid">
                {include file="lab/organisms/nav/nav-main.tpl" text=$text link=$cta.casino}
            </div>
        </nav>
    </section>
    <!-- end of NAV -->

    <a href="{$cta.casino}" rel="nofollow">
        <section class="mobile visible-xs">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-12">
                        <img src="{$asset}/{$lang}/mobile.jpg" class="img-responsive center-block" />
                    </div>
                </div>
            </div>
        </section>
        <!--  End of mobile section -->

        <section class="main">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-12 col-sm-7  ">

                        <div class="text hidden-xs" >
                            <!-- Add offer here-->
                            <img src="{$asset}/{$lang}/text.png" class="img-responsive " />

                        </div>
                        <!-- End of offer -->
                        <div class="movie" >
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="frame ">
                                        <div class=" center-block">
                                            <div id="ytplayer"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class=" col-sm-5 col-md-4 hidden-xs ">

                        <div class="offer" >
                            <!-- Add offer here-->
                            <img src="{$asset}/{$lang}/offer.png" class="img-responsive pull-right" />


                        </div>
                    </div>
                </div>
                <!-- end of offer row -->


            </div>
            <!-- end of main container -->

        </section>
    </a>
    <!-- end of main section -->
    <section class="boxes">
        {if $text}
            <div class="row visible-xs custom-text">
                <div class="text-center">
                    <h3>{$text}</h3>
                </div>
            </div>
        {/if}

        <div class="row">
            <div class="col-xs-12 hidden-xs">
                <img src="{$asset}/{$lang}/box.png" class="img-responsive center-block"alt="image" />
            </div>
            <!--  End of image -->
        </div>

        <div class="row">
            <div class="col-xs-12 visible-xs">
                <img src="{$asset}/{$lang}/box_mobile.png" class="img-responsive center-block"alt="image" />
            </div>
            <!--  End of image -->
        </div>

    </section>

    <section class="steps-m">
        <div class="container-fluid">
            <div class="row">
                <div class="steps">
                    <div class="col-xs-12">
                        <div class="row">
                            <div class="col-xs-12 hidden-xs">
                                <a href="{$cta.casino}" rel="nofollow">
                                    <img src="{$asset}/{$lang}/steps.png" alt="" class="img-responsive center-block">
                                </a>
                            </div>
                        </div>
                        <!-- end of lage screen steps -->
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 visible-xs">
                    <a href="{$cta.casino}" rel="nofollow">
                        <img src="{$asset}/{$lang}/steps_mobile.png" alt="" class="img-responsive center-block">
                    </a>
                </div>
            </div>
            <!-- end of small sreen steps -->

        </div>
    </section>
    <!-- end of steps section -->

    <section id="footer" class="bg-darkgrey">
       <footer class="text-muted">
           <div class="container-fluid">
               <div class="row terms">
                   <div class="col-xs-11 ">
                       <br>
                       <p class="pull-left">
                           *<a href="#modal">
                               <span class="text-muted">Teilnahmebedingungen</span>

                           </a>
                       </p>

                       <br>

                   </div>
               </div>
               {include file="lab/organisms/footer/footer-main.tpl"
               responsible_text_header = #responsible_text_header#
               payment_text_header = #payment_text_header#}
           </div>
       </footer>
    </section>

    <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
        <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
        <div>
            {include file="{$smarty.current_dir}/{$lang}/terms.tpl"}
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
        // Load the IFrame Player API code asynchronously.
        var tag = document.createElement('script');
        tag.src = "https://www.youtube.com/player_api";
        var firstScriptTag = document.getElementsByTagName('script')[0];
        firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

        // Replace the 'ytplayer' element with an <iframe> and
        // YouTube player after the API code downloads.
        var player;
        function onYouTubePlayerAPIReady() {
            player = new YT.Player('ytplayer', { //display youtube video on id=typlayer
                height: '275',
                width: '100%',
                videoId: 'mIg4Ui86SMo', //video id
                {literal}
                playerVars: {
                    'autoplay': 1,
                    'controls': 1,
                    'rel' : 0
                },
                {/literal}
            });
        }


    </script>
    <script>
        $(function(){
            $("#modal1Desc").load("{$asset}/{$lang}/terms.html");
        });
    </script>

{/block}





