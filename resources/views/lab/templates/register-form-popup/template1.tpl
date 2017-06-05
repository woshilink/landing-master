{extends file="base/base.tpl"}
{block name=title}{$name} {$title}{/block}
{block name=head}
    <link href="{$asset}/app.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/main.css">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">

    <link href="//fonts.googleapis.com/css?family=Oswald:400,700,300" rel="stylesheet" type="text/css">
    <link href="//fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries-->

    <style media="screen">
        .main-content{
            background-image: url('{$asset}/bg.jpg');
        }
        #steps{
            color: white;
        }
        .navbar{
            margin-bottom: 0;
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
    <section class="main-content">
        <div class="container main-wrapper">
            <div class="row">
                <div class="col-xs-6 ">
                    <div class="slot">
                        <img src="{$asset}/pic.png" alt="Slot" class="hidden-xs hidden-sm img-responsive center-block"/>
                        <img src="{$asset}/slot.gif" alt="Slot" class="hidden-xs hidden-sm img-responsive center-block spiner"/>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6">
                    <div class="offer text-center center-block">
                        <h2>{#offer#}</h2>
                        <h2>{#offer1#}</h2>
                        <h1>{#offer_prize#}</h1>
                        <form class="center-block" >

                            <div class="btn btn-lg btn-yellow center-block cbutton--effect-novak">{#cta#}</div>
                            <br />
                            <span>
                                <span style="cursor: pointer" class="text-white terms">{#terms#}</span>
                            </span>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="container">
        <a href="{$url}">
            <section id="steps">
                {include
                file="lab/organisms/steps/3steps.tpl"
                class=#stepgrid#
                step1=#step1#
                step2=#step2#
                step3=#step3#
                step1text=#step1dec#
                step2text=#step2dec#
                step3text=#step3dec#
                }
            </section>
        </a>

    </div>
    <section id="footer" class="bg-darkgrey">
        <div class="container">
            <div class="row terms container">
                <div class="col-xs-11 hidden-xs container">
                    <br>
                    <p class="pull-left hidden-xs">
                        *<span  class="terms">
                            <span style="cursor: pointer"  class="text-muted">{#terms#}</span>
                        </span>
                    </p>

                    <br>

                </div>
            </div>
            {include file="lab/organisms/footer/footer-main.tpl"}
        </div>
    </section>
    <div class="sr-only">register-form-popup/template1.tpl</div>
    <div class="sr-only">
        <div class="tc">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-xs-12">
                       {include file=$tc }
                   </div>
               </div>
           </div>
       </div>
    </div>
{/block}
{block name="footer"}
    <script src="src/js/remodal.min.js"></script>
    <script src="//rawgit.com/saribe/eModal/master/dist/eModal.min.js"></script>

    <script type="text/javascript">

        var options = {
            url: 'https://global.netbet.co.uk/casino/registration/?CSS-DEVICE=desktop&',
            title:'Register',
            size: eModal.size.lg,
            subtitle: '',
            loading: false,

        };
        var termOption = {
            message: $(".tc"),
            title:' ',
            size: eModal.size.lg,
            subtitle: '',
            loading: false,
        }
        // Display an modal whith iframe inside, with a title
        $('.btn-yellow').click(function() {
            eModal.iframe(options);
        });
        $('.terms').click(function() {
            eModal.alert(termOption);
        });

    </script>
{/block}

