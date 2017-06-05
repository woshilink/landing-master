{extends file="layout.tpl"}
{block name=title}{$name} {$title}{/block}

{block name=head}
    <!-- Bootstrap -->
    <link href="free25spin/src/css/bootstrap.min.css" rel="stylesheet">
    <link href="footer.css" rel="stylesheet">
    <link href="../template/templates/casino/{$lp}/style.css" rel="stylesheet">
    <link rel="stylesheet" href="free25spin/src/css/remodal.css">
    <link rel="stylesheet" href="free25spin/src/css/remodal-default-theme.css">
    <link href="//fonts.googleapis.com/css?family=Oswald:400,700,300" rel="stylesheet" type="text/css">
    <style>
        #main{
            background-image: url('../template/templates/casino/{$lp}/bg.jpg');
        }
    </style>
{/block}

{block name=body}
    {assign "lpconf" "{$smarty.current_dir}/lp.conf"}
    {config_load file=$lpconf}

    <nav>
        <div class="container">
            {include file="partial/nav/_nav.tpl"}
        </div>
    </nav>
    <a href="{$url}">
        <section id="main" class="hidden-xs">
            <div class="container">
                <div class="row">

                    <div class="col-xs-12  col-sm-6 pull-right">
                        <div class="offer">
                            <img src="../template/templates/casino/{$lp}/img/offer.png" alt="OFFER" class="img-responsive center-block"/>

                        </div>
                        <div class="button">
                            <button class="btn btn-black" type="submit">{#cta#}</button>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 ">
                        <div class="slot">
                            <img src="../template/templates/casino/{$lp}/pic.png" alt="Slot" class="img-responsive center-block hidden-sm"/>
                            <img src="../template/templates/casino/{$lp}/slot.gif" alt="Slot" class="img-responsive center-block spiner"/>
                        </div>
                    </div>

                </div>

            </div>
        </section>
        <section id="mobile" class="visible-xs">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <img src="../template/templates/casino/{$lp}/img/mobile.jpg" alt="OFFER" class="img-responsive"/>
                    </div>
                </div>
            </div>
        </section>
        <section id="steps">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <img src="../template/templates/casino/{$lp}/img/steps.jpg" alt="Steps" class="img-responsive hidden-xs center-block"/>
                        <img src="../template/templates/casino/{$lp}/img/steps-mobile.jpg" alt="Steps" class="img-responsive visible-xs"/>
                    </div>
                </div>
            </div>
        </section>
    </a>

    {include file="footer_casino.tpl" }
    {include file="partial/modal/_remodal.tpl"}
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="3-cards/src/js/remodal.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script type="text/javascript">
        $(function(){
            $("#modal1Desc").load("terms.html");
        });
        $('footer>div').removeClass('container-fluid');
        $('footer>div').addClass('container');
    </script>
{/block}
