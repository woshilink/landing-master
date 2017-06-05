{extends file="layout.tpl"}

{block name=title}Netbet - {$title}{/block}

{block name="head"}
    <link href="../sport/esport/src/css/bootstrap.min.css" rel="stylesheet">
    <link href="../template/templates/casino/{$lp}/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="../sport/esport/src/css/remodal.css">
    <link rel="stylesheet" href="../sport/esport/src/css/remodal-default-theme.css">
    <style>
        .main {
            background-image: url('../template/templates/casino/{$lp}/img/bg.jpg');
        }
        @media only screen and (max-width : 767px) {
            .main {
                background-image: none;
            }
        }

    </style>
{/block}
{block name="body"}<nav class="navbar">
    <div class="container">
        {include file="lab/organisms/nav/main-navbar.tpl"}
    </div>
    </nav>

    <a href="{$url}" rel="nofollow">
        <section class="mobile visible-xs">
            <img src="../template/templates/casino/{$lp}/img/mobile.jpg" alt="" class="img-responsive center-block">

        </section>
        <section class="main ">
            <div class="container">

                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-4 pull-right">
                        <div class="outer-offer ">
                            <div class="text-center">
                              <img src="../template/templates/casino/{$lp}/img/logo.png" alt="" />
                            </div>
                            <div class="offer text-center color-gold">
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
            <!-- end of main container -->

        </section>
        <section class="steps">
            <div class="container">
                    {include file="lab/organisms/steps/3steps.tpl"
                        class='col-xs-12 col-sm-offset-1 col-sm-10 col-md-offset-0 col-md-4'
                        numgrid='col-xs-12 col-sm-12 col-md-4 col-lg-3'
                        textgrid='col-xs-12 col-sm-12 col-md-8 col-lg-9'
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
        <div class="container">
            {include file="lab/organisms/footer/main-footer.tpl"}
            <!-- end of footer -->
        </div>
    </footer>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

{/block}
