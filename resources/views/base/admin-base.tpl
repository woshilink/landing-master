<!DOCTYPE html>
<html lang="{$lang|default:"en"}">
<head>
    <meta name="keywords" content="NetBet New Customer Welcome Offer" />
    <meta name="description" content="NetBet New Customer Welcome Offer" />
    <meta name="robots" content="noindex,follow" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="{url('/')}/src/img/admin/favicon.ico">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>{block name=title}{/block}</title>

    <!-- Bootstrap -->
    <link href="{url('/')}/src/css/bootstrap.min.css" rel="stylesheet">
    <link href="{url('/')}/src/css/admin/styles.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    {block name=head}

    {/block}

</head>
<body >
<div id="app">
{include file="pages/admin/partials/navbar/navbar.tpl"}
<div class="page-content">
    <div class="row">
        <div class="col-md-2">
            {include file="pages/admin/partials/sidebar/sidebar.tpl"}
        </div>
        <div class="col-md-10">

            {block name=body}

            {/block}

        </div>
    </div>
</div>

<footer>
    <div class="container">

        <div class="copy text-center">
            Copyright 2017 <a href="#">Lp System</a>
        </div>

    </div>
</footer>
</div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="{url('/')}/src/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function(){


    $(".submenu > a").click(function(e) {
    e.preventDefault();
    var $li = $(this).parent("li");
    var $ul = $(this).next("ul");

    if($li.hasClass("open")) {
    $ul.slideUp(350);
    $li.removeClass("open");
    } else {
    $(".nav > li > ul").slideUp(350);
    $(".nav > li").removeClass("open");
    $ul.slideDown(350);
    $li.addClass("open");
    }
    });

    });
</script>
{block name=footer}

{/block}

</body>
</html>
