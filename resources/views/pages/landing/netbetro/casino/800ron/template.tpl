{extends file="base/base.tpl"}
{block name=title}
    Netbet {$product|capitalize}
{/block}
{block name=head}

    <link href="src/css/main.css" rel="stylesheet">
    <link href="{$asset}/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">

    <style>
        .main{
            background-image: url('{$asset}/bg.jpg');
        }

    </style>
{/block}
{block name=body}
    <section id="main-nav">
        <nav class="navbar black-transparent ">
            <div class="container">
                {include file="lab/organisms/nav/nav-main.tpl" text=$text}
            </div>
        </nav>
    </section>

    <a href="{$cta.casino}" rel="nofollow">
        <section class="main">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-12 visible-xs">
                        <div class="pic">
                            <img src="{$asset}/mobile.png" alt="main" class="img-responsive center-block" >
                        </div>

                    </div>
                    <!--  End of girls iamge-->

                </div>
                <!--  End of bg mobile -->
                <div class="row">
                    <div class="col-md-10 hidden-xs">
                        <div class="pic">
                            <img src="{$asset}/girl.png" alt="main" class="img-responsive" >
                        </div>

                    </div>
                    <!--  End of girls iamge-->
                    <div class="col-xs-5 pull-right ">

                        <div class="offer hidden-xs" >

                            <img src="{$asset}/offer.png" class="img-responsive pull-right"/>

                        </div>
                        <!-- end of offer-->

                    </div>
                </div>


            </div>
            <!-- end of main container -->

            <section class="steps">
                <div class="container-fluid">
                    <div class="row visible-xs">
                        <div class="text-center">
                            <h3>{$text}</h3>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xs-12 hidden-xs steps-d">
                            <img src="{$asset}/steps.png" alt="" class="img-responsive center-block">
                        </div>
                    </div>
                    <!-- end of lage screen steps -->
                    <div class="row">
                        <div class=" col-xs-12 visible-xs steps">

                            <img src="{$asset}/steps_mobile.png" alt="" class="img-responsive center-block">
                        </div>
                    </div>
                    <!-- end of small sreen steps -->
                </div>

            </section>
    </a>
   <section id="terms">
       <div class="container-fluid">
           <div class="row terms">
               <div class="col-xs-11 col-lg-offset-1">
                   <br>
                   <p class="terms">
                       *<a href="#modal">
                           <span>Termeni și condiții</span>

                       </a>
                   </p>

                   <br>

               </div>
           </div>
       </div>
   </section>
    <section id="footer" class="bg-darkgrey">
        <div class="container-fluid">
            {include file="lab/organisms/footer/footer-main.tpl"
            responsible_text_header = 'JOC RESPONSABIL'
            payment_text_header = 'METODE DE PLATĂ'
            }
        </div>
    </section>
    <!-- end of steps section -->
    <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
        <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
        <div>
            {include file="pages/landing/{$domain}/terms/{$product}/800ron/terms.tpl"}
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
        $(function(){
            $("#modal1Desc").load("terms.html");
        });
    </script>
{/block}



