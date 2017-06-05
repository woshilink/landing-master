{extends file="base/base.tpl"}

{block name=title}Netbet - {$product|capitalize}{/block}

{block name="head"}
    <link href="{$asset}/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/main.css">
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

        #legal{
            margin-top: 80px;
            margin-bottom: 40px;
        }

    </style>
{/block}
{block name="body"}
    <nav>
        <div class="container">
            {include file="lab/organisms/nav/nav-main.tpl" }
        </div>
    </nav>

    <a href="{$cta.sport}" rel="nofollow">
        <section class="mobile visible-xs">
            <img src="{$asset}/img/mobile.jpg" alt="" class="img-responsive center-block">

        </section>
        <section class="main ">
            <div class="container">

                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-4 pull-right">
                        <div class="outer-offer ">
                            <div class="text-center">
                              <img src="{$asset}/img/logo.png" alt="" />
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

    <section id="legal">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-offset-3 col-sm-6 col-md-offset-2 col-md-8 ">
                    <div class="legal-text text-center">
                        <p>
                            +21, ΠΑΙΞΕ ΥΠΕΥΘΥΝΑ, WWW.KETHEA.GR, ΓΡΑΜΜΗ ΥΠΟΣΤΗΡΙΞΗΣ: 2109237777, ΑΡΜΟΔΙΑ ΑΡΧΗ ΑΔΕΙΟΔΟΤΗΣΗΣ MGA, ΚΙΝΔΥΝΟΣ ΕΘΙΣΜΟΥ ΚΑΙ ΑΠΩΛΕΙΑΣ ΠΕΡΙΟΥΣΙΑΣ
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer id="footer" >
        <div class="container wrapper-1170">
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

{/block}
