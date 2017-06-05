<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Landing Pages Guide</title>
    <!-- Core CSS - Include with every page -->
    <link href="/src/css/bootstrap.css" rel="stylesheet" />
    <link href="/src/css/font-awesome.css" rel="stylesheet" />
    <link href="/src/plugins/pace/pace-theme-big-counter.css" rel="stylesheet" />
    <link href="/src/css/guide-main.css" rel="stylesheet" />
    <link href="/src/css/guide-style.css" rel="stylesheet" />
    <link href="/src/css/prism.css" rel="stylesheet" />
    <!-- Page-Level CSS -->
    <link href="/src/plugins/morris/morris-0.4.3.min.css" rel="stylesheet" />

    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Rajdhani:700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Oswald:300,400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">

    {block name="head"}

    {/block}
</head>
<body>
<!--  wrapper -->
<div id="wrapper">


    {include file="pages/guide/lab/organisms/nav/navbar-top.tpl"}
    {include file="pages/guide/lab/organisms/nav/navbar-side.tpl"}
    <!--  page-wrapper -->
    {block name="content"}

    {/block}

</div>
<!-- end wrapper -->

<!-- Core Scripts - Include with every page -->
<script src="/src/plugins/jquery-1.10.2.js"></script>
<script src="/src/plugins/bootstrap/bootstrap.min.js"></script>
<script src="/src/plugins/metisMenu/jquery.metisMenu.js"></script>
<script src="/src/plugins/pace/pace.js"></script>
<script src="/src/scripts/siminta.js"></script>
<!-- Page-Level Plugin Scripts-->
<script src="/src/js/prism.js"></script>

{block name="js"}

{/block}

</body>

</html>
