{extends file="base/base.tpl"}

{block name=title}Netbet - {$title}{/block}

{block name="head"}
    <link href="src/css/bootstrap.min.css" rel="stylesheet">
    <link href="src/css/main.css" rel="stylesheet">
    <link href="{$asset}/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">
    <style>
        .main {
            background-image: url('{$asset}/img/bg.jpg');
        }
        @media only screen and (max-width : 767px) {
            .main {
                background-image: none;
            }
        }

    </style>
{/block}
{block name="body"}
    <section id="main-nav">
        <nav class="navbar black-transparent">
            <div class="container">
                {include file="lab/organisms/nav/nav-main.tpl" text=$text}
            </div>
        </nav>
    </section>

    <a href="{$url}" rel="nofollow">
        <section class="mobile visible-xs">
            <img src="{$asset}/img/mobile.jpg" alt="" class="img-responsive center-block">

        </section>
        <section class="main ">
            <div class="container">

                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-5 pull-right">
                        <div class="outer-offer hidden-xs">

                            <div class="inner-offer">
                             <div class="offer text-center">
                                <h2>
                                    ΠΑΙΞΤΕ <br>
                                    ΥΠΕΥΘΥΝΑ
                                </h2>
                              </div>
                              <div class="button text-center">
                                  <div  class="yellow-btn center-block ">ΚΛΙΚ ΕΔΩ</div>
                              </div>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
            <!-- end of main container -->

        </section>
        <section class="steps">
            <div class="container">
                {include file="lab/organisms/steps/3steps.tpl"
                class='col-xs-12 col-sm-offset-1 col-sm-10 col-md-offset-0 col-md-4'
                stepNumberClass='col-xs-12 col-sm-12 col-md-4 col-lg-3'
                stepTextClass='col-xs-12 col-sm-12 col-md-8 col-lg-9'
                step1='ΕΓΓΡΑΦΗ'
                step2='KATAΘΕΣΗ'
                step3='ΠΑΙΧΝΙΔΙ'
                step1text=''
                step2text=''
                step3text=''
                }
            </div>
        </section>
    </a>

    <!-- end of main section -->

    <footer>
        <section id="footer" class="bg-darkgrey">
            <div class="container">
                {include file="lab/organisms/footer/footer-main.tpl"}
            </div>
        </section>
    </footer>

{/block}

{block name="footer"}
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

{/block}