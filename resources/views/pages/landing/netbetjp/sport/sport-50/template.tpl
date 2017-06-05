{extends file="base/base.tpl"}
{block name=title}
   {$brand|capitalize} {$product|capitalize}
{/block}
{block name=head}
    <link rel="stylesheet" href="https://css.netbet.com/gms/sprites/sprites_eu.css?63">
    <link rel="stylesheet" type="text/css" href="{$asset}/styles.css">
    <link rel="stylesheet" href="src/css/remodal.css">
    <link rel="stylesheet" href="src/css/main.css">
    <link rel="stylesheet" href="src/css/remodal-default-theme.css">
    <script src="src/js/modernizr.js"></script>
    <style>

        @font-face {
            font-family: 'bebas_neuebold';
            src: url("src/fonts/bebasneue_bold-webfont.woff2") format("woff2"), url("src/fonts/bebasneue_bold-webfont.woff") format("woff");
            font-weight: normal;
            font-style: normal;
        }

        @font-face {
            font-family: 'bebas_neuebook';
            src: url("src/fonts/bebasneue_book-webfont.woff2") format("woff2"), url("src/fonts/bebasneue_book-webfont.woff") format("woff");
            font-weight: normal;
            font-style: normal;
        }

        @font-face {
            font-family: 'bebas_neuelight';
            src: url("src/fonts/bebasneue_light-webfont.woff2") format("woff2"), url("src/fonts/bebasneue_light-webfont.woff") format("woff");
            font-weight: normal;
            font-style: normal;
        }

        @font-face {
            font-family: 'bebas_neue_regularregular';
            src: url("src/fonts/bebasneue_regular-webfont.woff2") format("woff2"), url("src/fonts/bebasneue_regular-webfont.woff") format("woff");
            font-weight: normal;
            font-style: normal;
        }

        @font-face {
            font-family: 'bebas_neuethin';
            src: url("src/fonts/bebasneue_thin-webfont.woff2") format("woff2"), url("src/fonts/bebasneue_thin-webfont.woff") format("woff");
            font-weight: normal;
            font-style: normal;
        }

        @font-face {
            font-family: 'bebas_neueromania';
            src: url("src/fonts/bebasneue_romania-webfont.woff2") format("woff2"), url("src/fonts/bebasneue_romania-webfont.woff") format("woff");
            font-weight: normal;
            font-style: normal;
        }
        .hero_mobile .hero_content {
            background: url({$asset}/img/bg-0c0e13.jpg) no-repeat center center;
            background-size: cover;
            height: 100vh !important;
        }
        #footer{
            color: #8f8e8f;
        }
    </style>
{/block}
{block name=body}
    <header>
        <div class="wrapper">
            <div class="container">
                <div class="header_content">
                    <div class="logo_container">
                        <a href="{$cta.sport}" class="logo sprite-global-layout sprite-global-layout-logo"></a>
                    </div>
                    <div class="header_title">
                        <a href="{$cta.sport}" class="title">
                            {if $text}
                                {$text}
                            {else}
                                {if $lang == 'fr'}
                                    PARIS SPORTIFS
                                {elseif $lang == 'de'}
                                    SPORTWETTEN
                                {elseif $lang == 'es'}
                                    APUESTAS DEPORTIVAS
                                {elseif $lang == 'ja'}
                                    スポーツブック
                                {else}
                                    SPORTSBOOK
                                {/if}
                            {/if}
                        </a>
                    </div>
                    <div class="sign_btn_holder">
                        <a href="{$cta.sport}" class="sign_up_btn">
                            {if $lang == 'fr'}
                                INSCRIVEZ-VOUS
                            {elseif $lang == 'de'}
                                ANMELDEN
                            {elseif $lang == 'es'}
                                REGÍSTRATE
                            {elseif $lang == 'ja'}
                                登録
                            {else}
                                Sign Up
                            {/if}
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <section class="hero">
        <div class="hero_content">
            <div class="container">
                <div class="text_holder floating-text">
                    <a href="{$cta.sport}" class="text_inner">
                        <p class="w_border animated delay fadeInLeft">
                            {if $lang == 'fr'}
                                50 € GRATUITS
                            {elseif $lang == 'de'}
                                100€ BONUS
                            {elseif $lang == 'es'}
                                $50 GRATIS
                            {elseif $lang == 'ja'}
                                $50無料
                            {else}
                                $/€50 free
                            {/if}
                        </p>
                        {if $lang == 'fr'}
                            <p class="small x1 delayX1 fadeIn">ATTEIGNEZ VOTRE BUT</p>
                        {elseif $lang == 'de'}
                            <p class="large x1 delayX1 fadeIn">BEI NETBET</p>
                        {elseif $lang == 'es'}
                            <p class="small x1 delayX1 fadeIn">MÁRCATE UN TANTO</p>
                        {elseif $lang == 'ja'}
                            <p class="large x1 delayX1 fadeIn">ネットベット</p>
                        {else}
                            <p class="large x1 delayX1 fadeIn">At Netbet</p>
                        {/if}
                        {if $lang == 'fr'}
                            <p class="large delayX1 x2 fadeInRight">SUR NETBET</p>
                        {elseif $lang == 'de'}
                            <p class="small delayX1 x2 fadeInRight">TREFFEN SIE IMMER</p>
                        {elseif $lang == 'es'}
                            <p class="large delayX1 x2 fadeInRight">CON NETBET</p>
                        {elseif $lang == 'ja'}
                            <p class="small delayX1 x2 fadeInRight">勝利を決める</p>
                        {else}
                            <p class="small delayX1 x2 fadeInRight">you always score</p>
                        {/if}
                        <p class="green_btn animated delayX3 fadeInUp">
                            {if $lang == 'fr'}
                                <span class="text">OBTENEZ VOTRE BONUS</span>
                            {elseif $lang == 'de'}
                                <span class="text">BONUS ABSTAUBEN</span>
                            {elseif $lang == 'es'}
                                <span class="text">CONSIGUE TU BONO</span>
                            {elseif $lang == 'ja'}
                                <span class="text">ボーナスを獲得</span>
                            {else}
                                <span class="text">Score your Bonus</span>
                            {/if}
                        </p>
                    </a>
                </div>
            </div>
            <div class="background-wrapper">
                <figure class="floating-background">
                    <img src="{$asset}/img/bg.jpg" alt="image-1">
                    <img src="{$asset}/img/img-2.png" alt="image-2" class="fadeinRight animated">
                    <img src="{$asset}/img/img-3.png" alt="image-3">
                </figure>
            </div>
        </div>
    </section>
    <section class="hero_mobile">
        <div class="hero_content">
            <div class="container">
                <div class="text_holder">
                    <a href="{$cta.sport}" class="text_inner">
                        <p class="w_border x1 delayX1 bounceInLeft">
                            {if $lang == 'fr'}
                                50 € GRATUITS
                            {elseif $lang == 'de'}
                                100€ BONUS
                            {elseif $lang == 'es'}
                                $50 GRATIS
                            {elseif $lang == 'ja'}
                                $50無料
                            {else}
                                $/€50 free
                            {/if}
                        </p>
                        {if $lang == 'fr'}
                            <p class="small x1 delayX1 fadeIn">ATTEIGNEZ VOTRE BUT</p>
                        {elseif $lang == 'de'}
                            <p class="large x1 delayX1 fadeIn">BEI NETBET</p>
                        {elseif $lang == 'es'}
                            <p class="small x1 delayX1 fadeIn">MÁRCATE UN TANTO</p>
                        {elseif $lang == 'ja'}
                            <p class="large x1 delayX1 fadeIn">ネットベット</p>
                        {else}
                            <p class="large x1 delayX1 fadeIn">At Netbet</p>
                        {/if}
                        {if $lang == 'fr'}
                            <p class="large delayX1 x2 fadeInRight">SUR NETBET</p>
                        {elseif $lang == 'de'}
                            <p class="small delayX1 x2 fadeInRight">TREFFEN SIE IMMER</p>
                        {elseif $lang == 'es'}
                            <p class="large delayX1 x2 fadeInRight">CON NETBET</p>
                        {elseif $lang == 'ja'}
                            <p class="small delayX1 x2 fadeInRight">勝利を決める</p>
                        {else}
                            <p class="small delayX1 x2 fadeInRight">you always score</p>
                        {/if}
                        </p>
                    </a>
                </div>
            </div>
            <div class="images_holder">
                <img src="{$asset}/img/img-2.png" alt="image-2" class="players">
                <img src="{$asset}/img/img-3.png" alt="image-3" class="keeper">
            </div>
        </div>
    </section>
    <div class="hero_footer animated fadeIn">
        <div class="wrapper">
            <div class="container">
                <div class="hero_footer_text">
                    <div class="sign_up_btn">
                        <a href="{$cta.sport}" class="green_btn">
                            {if $lang == 'fr'}
                                <span class="text">OBTENEZ VOTRE BONUS</span>
                            {elseif $lang == 'de'}
                                <span class="text">BONUS ABSTAUBEN</span>
                            {elseif $lang == 'es'}
                                <span class="text">CONSIGUE TU BONO</span>
                            {elseif $lang == 'ja'}
                                <span class="text">ボーナスを獲得</span>
                            {else}
                                <span class="text">Score your Bonus</span>
                            {/if}
                        </a>
                    </div>
                    <p class="text">
                        {if $lang == 'fr'}
                            NOUVEAUX CLIENTS UNIQUEMENT - SAISISSEZ LE CODE BONUS : WELCOME50 - MISEZ 1X VOTRE DÉPÔT POUR RECEVOIR VOTRE BONUS, MISEZ 6X (DÉPÔT ET BONUS) - <a href="#modal" class="tc_link">LES CONDITIONS GÉNÉRALES S’APPLIQUENT</a>.
                        {elseif $lang == 'de'}
                            NUR FÜR NEUKUNDEN - BONUS-CODE 100DE EINGEBEN - 1X DURCHSPIELBEDINGUNGEN FÜR DIE EINZAHLUNG, UM DEN BONUS ZU ERHALTEN, 6X DURCHSPIELBEDINGUNGEN  (EINZAHLUNG UND BONUS) - <a href="#modal" class="tc_link">ES GELTEN BEDINGUNGEN</a>.
                        {elseif $lang == 'es'}
                            OFERTA EXCLUSIVA PARA NUEVOS JUGADORES - INTRODUCE EL CÓDIGO DE BONO: WELCOME50 - JUEGA LA CANTIDAD DEPOSITADA (PLAYTHROUGH × 1) Y RECIBE TU BONO (PLAYTHROUGH × 6, DEPÓSITO Y BONO) - <a href="#modal" class="tc_link">SE APLICAN T&amp;C</a>.
                        {elseif $lang == 'ja'}
                            新規登録者のみ対象。ボーナスコードWELCOME50を入力 、プレイスルーは1倍。ボーナスを受け取るには6倍のプレイスルーが必要です。(入金とボーナスの合計) <a href="#modal" class="tc_link">利用規約はこちら</a>.
                        {else}
                            NEW CUSTOMERS ONLY - ENTER BONUS CODE: WELCOME50 - PLAYTHROUGH 1X DEPOSIT TO RECEIVE YOUR BONUS, PLAYTHROUGH X6 (DEPOSIT AND BONUS) - <a href="#modal" class="tc_link">T&amp;CS APPLY</a>
                        {/if}
                    </p>
                </div>
            </div>
        </div>
    </div>
    <section class="steps_section">
        <div class="wrapper">
            <div class="container">
                <h1 class="steps_title animated fadeIn wow">
                    {if $lang == 'fr'}
                        COMMENT ÇA MARCHE?
                    {elseif $lang == 'de'}
                        SO FUNKTIONIERT'S
                    {elseif $lang == 'es'}
                        CÓMO FUNCIONA
                    {elseif $lang == 'ja'}
                        ルール
                    {else}
                        Here is how it works
                    {/if}
                </h1>
                <div class="steps_holder">
                    <a href="{$cta.sport}" class="step_link">
                        <ul class="step step_one">
                            <li class="text_container text_desktop col-xs-5">
                                <div class="step_text text_left">
                                    <p class="text_blue animated fadeInLeft wow">
                                        {if $lang == 'fr'}
                                            1 - CRÉEZ VOTRE COMPTE
                                        {elseif $lang == 'de'}
                                            1 - KONTO ERSTELLEN
                                        {elseif $lang == 'es'}
                                            1 - CREA TU CUENTA
                                        {elseif $lang == 'ja'}
                                            1 - アカウントを作成
                                        {else}
                                            1 - create your account
                                        {/if}
                                    </p>
                                    <p class="text_grey delay animated fadeInLeft wow">
                                        {if $lang == 'fr'}
                                            ACCÉDEZ À PLUS DE 20 000 MARCHÉS PAR MOIS
                                        {elseif $lang == 'de'}
                                            ZUGRIFF AUF ÜBER 20.000 MÄRKTE PRO MONAT
                                        {elseif $lang == 'es'}
                                            ACCEDE A MÁS DE 20 000 MERCADOS CADA MES
                                        {elseif $lang == 'ja'}
                                            20,000以上のゲームにアクセス
                                        {else}
                                            Access over 20.000 markets a month
                                        {/if}
                                    </p>
                                </div>
                            </li>
                            <li class="icon_holder col-xs-2">
                                <div class="step_icon animated fadeIn wow">
                                    <img src="{$asset}/img/step1.png" alt="">
                                </div>
                            </li>
                            <li class="text_container text_mobile">
                                <div class="step_text text_left">
                                    <p class="text_blue animated fadeInLeft wow">
                                        {if $lang == 'fr'}
                                            1 - CRÉEZ VOTRE COMPTE
                                        {elseif $lang == 'de'}
                                            1 - KONTO ERSTELLEN
                                        {elseif $lang == 'es'}
                                            1 - CREA TU CUENTA
                                        {elseif $lang == 'ja'}
                                            1 - アカウントを作成
                                        {else}
                                            1 - create your account
                                        {/if}
                                    </p>
                                    <p class="text_grey delay animated fadeInLeft wow">
                                        {if $lang == 'fr'}
                                            ACCÉDEZ À PLUS DE 20 000 MARCHÉS PAR MOIS
                                        {elseif $lang == 'de'}
                                            ZUGRIFF AUF ÜBER 20.000 MÄRKTE PRO MONAT
                                        {elseif $lang == 'es'}
                                            ACCEDE A MÁS DE 20 000 MERCADOS CADA MES
                                        {elseif $lang == 'ja'}
                                            20,000以上のゲームにアクセス
                                        {else}
                                            Access over 20.000 markets a month
                                        {/if}
                                    </p>
                                </div>
                            </li>
                        </ul>
                    </a>
                    <div class="clearfix"></div>
                    <div class="line animaded fadeInDown wow"></div>
                    <div class="clearfix"></div>
                    <a href="{$cta.sport}" class="step_link">
                        <ul class="step step_two">
                            <li class="empty col-xs-5"></li>
                            <li class="icon_holder col-xs-2">
                                <div class="step_icon animated fadeIn wow">
                                    <img src="{$asset}/img/step2.png" alt="">
                                </div>
                            </li>
                            <li class="text_container col-xs-5">
                                <div class="step_text text_right">
                                    <p class="text_blue animated fadeIn wow">
                                        {if $lang == 'fr'}
                                            2 - SAISISSEZ LE CODE BONUS : WELCOME50
                                        {elseif $lang == 'de'}
                                            2 - BONUS CODE: 100DE
                                        {elseif $lang == 'es'}
                                            2 - INTRODUCE EL CÓDIGO DE BONO: WELCOME50
                                        {elseif $lang == 'ja'}
                                            2 - ボーナスコードを入力: WELCOME50
                                        {else}
                                            2 - Enter Bonus Code: Welcome50
                                        {/if}
                                    </p>
                                    <p class="text_grey delay animated fadeIn wow">
                                        {if $lang == 'fr'}
                                            EFFECTUEZ UN 1ER DÉPÔT
                                        {elseif $lang == 'de'}
                                            1. EINZAHLUNG VORNEHMEN
                                        {elseif $lang == 'es'}
                                            REALIZA TU PRIMER DEPÓSITO
                                        {elseif $lang == 'ja'}
                                            コードを入力してから初回入金
                                        {else}
                                            Enter code and make a 1st deposit
                                        {/if}
                                    </p>
                                </div>
                            </li>
                        </ul>
                    </a>
                    <div class="clearfix"></div>
                    <div class="line animaded fadeInDown wow"></div>
                    <div class="clearfix"></div>
                    <a href="{$cta.sport}" class="step_link">
                        <ul class="step step_three">
                            <li class="text_container text_desktop col-xs-5">
                                <div class="step_text text_left">
                                    <p class="text_blue animated fadeInLeft wow">
                                        {if $lang == 'fr'}
                                            3 - COMMENCEZ À GAGNER!
                                        {elseif $lang == 'de'}
                                            3 - GEWINNEN!
                                        {elseif $lang == 'es'}
                                            3 - ¡EMPIEZA A GANAR!
                                        {elseif $lang == 'ja'}
                                            3 - ベットスタート!
                                        {else}
                                            3 - start scoring!
                                        {/if}
                                    </p>
                                    <p class="text_grey delay animated fadeInLeft wow">
                                        {if $lang == 'fr'}
                                            RECEVEZ JUSQU’À 50 € GRATUITS APRÈS LA MISE EN JEU
                                        {elseif $lang == 'de'}
                                            BIS ZU 100 € BONUS NACH ERFÜLLUNG DER DURCHSPIELBEDINGUNGEN
                                        {elseif $lang == 'es'}
                                            CONSIGUE HASTA $50 GRATIS TRAS COMPLETAR LOS REQUISITOS DE APUESTA
                                        {elseif $lang == 'ja'}
                                            ロールオーバー後に最大$50のフリーベットを獲得
                                        {else}
                                            recieve up to $/€50 free after rollover
                                        {/if}
                                    </p>
                                </div>
                            </li>
                            <li class="icon_holder col-xs-2">
                                <div class="step_icon animated fadeIn wow">
                                    <img src="{$asset}/img/step3.png" alt="">
                                </div>
                            </li>
                            <li class="text_container text_mobile">
                                <div class="step_text text_right">
                                    <p class="text_blue animated fadeIn wow">
                                        {if $lang == 'fr'}
                                            3 - COMMENCEZ À GAGNER!
                                        {elseif $lang == 'de'}
                                            3 - GEWINNEN!
                                        {elseif $lang == 'es'}
                                            3 - ¡EMPIEZA A GANAR!
                                        {elseif $lang == 'ja'}
                                            3 - ベットスタート!
                                        {else}
                                            3 - start scoring!
                                        {/if}
                                    </p>
                                    <p class="text_grey delay animated fadeIn wow">
                                        {if $lang == 'fr'}
                                            RECEVEZ JUSQU’À 50 € GRATUITS APRÈS LA MISE EN JEU
                                        {elseif $lang == 'de'}
                                            BIS ZU 100 € BONUS NACH ERFÜLLUNG DER DURCHSPIELBEDINGUNGEN
                                        {elseif $lang == 'es'}
                                            CONSIGUE HASTA $50 GRATIS TRAS COMPLETAR LOS REQUISITOS DE APUESTA
                                        {elseif $lang == 'ja'}
                                            ロールオーバー後に最大$50のフリーベットを獲得
                                        {else}
                                            recieve up to $/€50 free after rollover
                                        {/if}
                                    </p>
                                </div>
                            </li>
                        </ul>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <section id="footer" class="bg-darkgrey" style="background: #1e1e1e; padding-top: 20px">
        <div class="container">
            {include file="lab/organisms/footer/footer-main.tpl"}
        </div>
    </section>

    <div class="remodal" data-remodal-id="modal" role="dialog" aria-labelledby="modal1Title" aria-describedby="modal1Desc">
        <button data-remodal-action="close" class="remodal-close" aria-label="Close"></button>
        <div>
           {include file="pages/landing/{$domain}/terms/{$product}/welcome-offer/terms.tpl"}
        </div>
        <!-- loadind terms from terms from Jquery -->
        <br>
        <button data-remodal-action="confirm" class="remodal-confirm">OK</button>
    </div>
{/block}
{block name=footer}


    <script type="text/javascript" src="src/js/remodal.min.js"></script>
    <script src="src/js/wow.js"></script>
    <script src="{$asset}/js/main.js"></script>

    <script>
        $("body").addClass('{$lang}');

    </script>
{/block}

