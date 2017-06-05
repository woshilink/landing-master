<!DOCTYPE html>
<html lang="{$lang|default:"en"}">
<head>
    <meta name="keywords" content="NetBet New Customer Welcome Offer" />
    <meta name="description" content="NetBet New Customer Welcome Offer" />
    <meta name="robots" content="noindex,follow" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="src/img/{$brand}/favicon.ico">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>{block name=title}{/block}</title>

    <!-- Bootstrap -->
    <link href="{url('/')}/src/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    {block name=head}

    {/block}

    {include file="base/include/google-tag-manager.tpl" analytics=$analytics}

</head>
<body>

    {include file="base/include/gmt-after-body.tpl"}

  {if isset($smarty.get.mode) && $smarty.get.mode == 'dev'}
    <div class="alert alert-danger alert-dismissible text-center" role="alert">
      <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      <strong>Warning!</strong> Development in process....
    </div>
  {/if}

  {block name=body}

  {/block}

  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="{url('/')}/src/js/bootstrap.min.js"></script>

  {block name=footer}

  {/block}

  {include file="base/include/cookie.tpl" cookies=$cookies}
</body>
</html>
