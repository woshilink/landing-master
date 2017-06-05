{extends file="base/base.tpl"}
{block name=title}
    Editable title of landing pages
{/block}
{block name=head}
    <link href="src/css/main.css" rel="stylesheet">
    <link href="{$asset}/styles.css" rel="stylesheet">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">

    <style>
        .navbar {
            background-image: url('src/img/blue-header.jpg');
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
        }
        @font-face {
            font-family: Bebas Avenu;
            src: url("src/fonts/BebasNeue.otf");
        }

        .main {
            background-image: url('{$asset}/bg.jpg');
        }
        .offscreen{
            position: absolute;
            margin-top: -5000px;
        }
        {if $lp == 'tennis'}
        .offer h1 {
            color: #F4DE47;
            font-size: 7em;
        }
        .offer h2 {
            font-size: 4em;
        }

        .bit-right{
            width: 30%;
        }
        .button >.CTA-button {
            text-shadow: 0px 2px 1px #D4BF0A;
            background: url("../images/bg-button.png") center center;
            background: -webkit-linear-gradient(#F4DE47, #D4BF0A);
            background: -o-linear-gradient(#F4DE47, #D4BF0A);
            background: -moz-linear-gradient(#F4DE47, #D4BF0A);
            background: linear-gradient(#F4DE47, #D4BF0A);
            border-radius: 5px;
            box-shadow: #000 2px 2px 4px;
        }
        .button >.CTA-button:hover {
            color: #000;
            background: -webkit-linear-gradient(#D4BF0A, #F4DE47);
            background: -o-linear-gradient(#D4BF0A, #F4DE47);
            background: -moz-linear-gradient(#D4BF0A, #F4DE47);
            background: linear-gradient(#D4BF0A, #F4DE47);
        }
        {/if}
        @media only screen and (max-width: 768px){
            .reg {

                background-image: url('{$asset}/bg.jpg');
                background-size: 100% 100%;
            }
        }
    </style>
{/block}
{block name=body}
    <div class="container text-center">
        <p style="color: white">{$legal_text}</p>
    </div>

    <section id="main-nav">
        <nav class="navbar black-transparent ">
            <div class="container-fluid">
                {include file="lab/organisms/nav/nav-main.tpl" domain='netbet' }
            </div>
        </nav>
    </section>
    <section class="main hidden-xs">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12 col-sm-4  bit-right pull-right hidden-xs">

                    <div class="reg">
                        <div class="offer text-center" >

                            <h2>JUSQU'À</h2>
                            <h1>100&euro;</h1>
                            <h2>OFFERTS</h2>

                        </div>
                        <!-- end of offer text  -->
                        <form class="center-block" id="form1" method="get"  action="https://netbetsport.fr/compte/inscription">
                            <input type="text" name="fname" placeholder="1er prénom">
                            <input type="text" name="lname" placeholder="Nom">
                            <input type="text" name="email" placeholder="Adresse email">
                            <!-- <input type="text" name="phone"placeholder="Téléphone"> -->
                            <!-- <label for="day">Date de naissance:</label><br>
                            <div id="dob" class="datefield">
                                  <input id="day" type="tel" maxlength="2" placeholder="DD"/> /
                                  <input id="month" type="tel" maxlength="2" placeholder="MM"/>/
                                  <input id="year" type="tel" maxlength="4" placeholder="YYYY"/>
                           </div> -->

                        </form>
                        <!-- End of form -->

                        <div class="button">
                            <a  class="CTA-button center-block" href="" id="button1" rel="nofollow">Inscription</a>
                        </div>

                        <!-- End of button -->
                    </div>
                </div>
            </div>



        </div>
        <!-- end of main container -->

    </section>

    <!-- end of main section -->
    <section class="reg-mobile">
        <div class="container-fluid">

            <div class="row">
                <div class="col-xs-12 col-sm-4  visible-xs">

                    <div class="reg">
                        <div class="offer text-center" >

                            <h2>JUSQU'À</h2>
                            <h1>100&euro;</h1>
                            <h2>OFFERTS</h2>

                        </div>
                        <!-- end of offer text  -->
                        <form class="center-block" id="form2"  method="get" action="https://m.netbet.fr/inscription">
                            <input type="text" name="firstname" placeholder="1er prénom">
                            <input type="text" name="lastname" placeholder="Nom">
                            <input type="text" name="email" placeholder="Adresse email">
                            <!-- <input type="text" name="phone"placeholder="Téléphone"> -->



                        </form>
                        <!-- End of form -->

                        <div class="button">
                            <a  class="CTA-button center-block" href="" id="button2" rel="nofollow">Inscription</a>
                        </div>

                        <!-- End of button -->
                    </div>
                </div>
            </div>
            {if $text}
                <div class="row visible-xs">
                    <div class="text-center">
                        <h3>{$text}</h3>
                    </div>
                </div>
            {/if}
            <div class="col-xs-12  visible-xs end">
                <img src="img/text.png" class="img-responsive center-block" alt="">

            </div>

            <!-- end of text -->
        </div>
    </section>
    <div class="blue-footer">
        <a href="{$cta.sport}" rel="nofollow">
            <section class="steps">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-xs-12 hidden-xs">
                            <img src="{$asset}/steps.png" alt="" class="img-responsive center-block">
                        </div>
                    </div>
                    <!-- end of lage screen steps -->

                    <div class="row">
                        <div class="col-xs-12 visible-xs">
                            <img src="{$asset}/steps_mobile.png" alt="" class="img-responsive center-block">
                        </div>
                    </div>
                    <!-- end of small sreen steps -->
                </div>

            </section>
        </a>
        <!-- end of steps section -->
        <section class="terms">
            <div class="container-fluid">

                <div class="row">

                    <div class="col-md-12 ">


                        <center>
                            <p id="terms_mobile" class=" text-center">
                                <br>
                                <a href="#modal" rel="nofollow" style="font-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-size: 12px; color:#8F8F8F;">* <span style="text-decoration: underline;">Conditions sur NetBet.fr</span></a>
                                <br>
                            </p>
                        </center>
                        <br>

                    </div>
                </div>
            </div>
        </section>
        <!-- End of terms section -->
        <div class="container-fluid">
            <p class="top-text visible-xs">
                *voir conditions sur le site Jouer comporte des risques : endettement, dépendance… Appelez le 09-74-75-13-13 (appel non surtaxé).
            </p>
        </div>

       <section id="footer" class="text-center text-grey-light">
           <div class="container-fluid">
               {include file="lab/organisms/footer/footer-main.tpl"
               responsible_text_header = #responsible_text_header#
               payment_text_header = #payment_text_header#
               payment_methods = $content.payment_methods
               responsibles = $content.responsibles
               }
           </div>
       </section>
    </div>
    <!-- End of blue footer -->

    <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
        <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
        <div>
            {include file="pages/landing/{$domain}/terms/{$product}/welcome-offer/terms.tpl"}
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
        /*
         * FUNCTION
         */
        //
        // function setPrefilledRegistrationData (registrationVersion, registrationRedirectionUrl, formId) {
        // var form = $(formId);
        // if (form.length > 0) {
        // var formData = form.serializeArray();
        // var data = {};
        // $.each(formData, function(key, val) {
        // data[val.name] = val.value;
        // });
        // $.ajax({
        // url: registrationVersion + 'RegisterV2/setPrefilledRegistrationData',
        // method: 'POST',
        // data: data,
        // xhrFields: {
        // withCredentials: true
        // },
        // crossDomain: true,
        // success: function() {
        // location.href = registrationRedirectionUrl;
        // }
        // });
        // }
        // }
        // /*
        /* CONFIGURATION
         */
        //{if $id}var ida =   {$id};{/if}
        //var registrationVersion = 'https://registration.netbet.com/';
        //var registrationRedirectionUrl = registrationVersion  + '?mobile_small&netbetsport';
        //var registrationRedirectionUrl1 = "https://banners.livepartners.com/click.php?p=5&t=register"+"&id="{if $id}+ ida {/if} {if $postfix} + {$postfix}{/if} ;


        // $(document).ready(function(){
        // $('#button1').click(function(){
        // setPrefilledRegistrationData(registrationVersion, registrationRedirectionUrl1, '#form1');
        //
        // });
        // });
        // $(document).ready(function(){
        // $('#button2').click(function(){
        // setPrefilledRegistrationData(registrationVersion, registrationRedirectionUrl1, '#form2');
        //
        // });
        // });

    </script>

    <script>
        $(function(){
            $("#modal1Desc").load("terms.html");
        });



        var val = $('[name="fname"]' ).val();


        // $('#button1').click(function() {
        //$( "#form1" ).submit();
        //});

        $('#button1').click(function(){

            $(this).attr('href', function() {

                var val1 = $('[name="fname"]' ).val();
                var val2 = $('[name="lname"]' ).val();
                //var val3 = $('[name="phone"]' ).val();
                var val3 = $('[name="email"]' ).val();
                // var val5 = $('#day').val();
                // var val6 = $('#month').val();
                // var val7 = $('#year').val();

                var allpara = '&fname='+val1+'&lname='+val2+'&email='+val3;
                //alert(this.href + allpara);
                return '{$cta.sport}' + allpara;

            });

        });

        $('#button2').click(function(){

            $(this).attr('href', function() {

                var val1 = $('[name="fname"]' ).val();
                var val2 = $('[name="lname"]' ).val();
                //var val3 = $('[name="phone"]' ).val();
                var val3 = $('[name="email"]' ).val();
                // var val5 = $('#daym').val();
                // var val6 = $('#monthm').val();
                // var val7 = $('#yearm').val();


                var allpara = '&fname='+val1+'&lname='+val2+'&email='+val3;
                //alert(this.href + allpara);
                return '{$cta.sport}' + allpara;

            });

        });
    </script>
{/block}






