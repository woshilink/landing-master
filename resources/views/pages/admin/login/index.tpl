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
    <title>{block name=title}Login {/block}</title>

    <!-- Bootstrap -->
    <link href="{url('/')}/src/css/bootstrap.min.css" rel="stylesheet">
    <link href="{url('/')}/src/css/admin/styles.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->



</head>
<body>
<div class="header">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <!-- Logo -->
                <div class="logo">
                    <h1><a href="">LP System</a></h1>
                </div>
            </div>


        </div>
    </div>
</div>
<div class="page-content container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">

                <div class="login-wrapper">
                    <div class="box">
                        <div class="content-wrap">
                            <form  role="form" method="POST" action="{url('/admin/auth/login')}">
                                <input class="form-control" type="text" name="username" placeholder="Username">
                                <input class="form-control" type="password" name="password" placeholder="Password">
                                <div class="action">
                                    <button type="submit" class="btn btn-primary">
                                        Login
                                    </button>

                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="already">
                        <p>Don't have an account yet?</p>
                        <a href="signup.html">Sign Up</a>
                    </div>
                </div>

        </div>
    </div>
</div>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="{url('/')}/src/js/bootstrap.min.js"></script>



</body>
</html>
