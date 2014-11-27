<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Login</title>

    <!-- Bootstrap core CSS -->
    <#--<link href="../../dist/css/bootstrap.min.css" rel="stylesheet">-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<div style="" align="center">

    <form  method="post">

        <h2 class="form-signin-heading">Please sign in</h2>
        <label for="inputEmail" class="sr-only">Username</label>
        <input name="username" value="${username}" type="text" id="inputEmail" class="form-control"  style="width:250px;height:35px" placeholder="Email address" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password"name="password" value="" id="inputPassword" class="form-control"  style="width:250px;height:35px" placeholder="Password" required>
        <button class="btn btn-lg btn-primary btn-block" type="submit"  style="width:250px;height:35px">Sign in</button>
        <div class="error"> ${login_error}</div>
    </form>

</div> <!-- /container -->
<div style="text-align: center">Need to Create an account? <a href="/signup">Signup</a></div>
<footer class="footer">
    <div class="container">
        <p class="text-muted" style="text-align: center">Denis Kovalenko 2014</p>
    </div>
</footer>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>


