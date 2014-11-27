<#--<!doctype HTML>-->
<#--<html>-->
<#--<head>-->
    <#--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">-->
    <#--<title>Create a new post</title>-->
<#--</head>-->
<#--<body>-->
<#--<#if username??>-->
    <#--Welcome ${username} <a href="/logout">Logout</a> | <a href="/">Blog Home</a>-->

    <#--<p>-->
<#--</#if>-->
<#--<form action="/newpost" method="POST">-->
    <#--${errors!""}-->
    <#--<h2>Title</h2>-->
    <#--<input type="text" name="subject" size="120" value="${subject!""}"><br>-->

    <#--<h2>Blog Entry-->
        <#--<h2>-->
            <#--<textarea name="body" cols="120" rows="20">${body!""}</textarea><br>-->

            <#--<h2>Tags</h2>-->
            <#--Comma separated, please<br>-->
            <#--<input type="text" name="tags" size="120" value="${tags!""}"><br>-->

            <#--<p>-->
                <#--<input type="submit" class="btn btn-primary" value="Submit">-->

<#--</body>-->
<#--</html>-->


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
    <title>Create a new post</title>

    <!-- Custom styles for this template -->
    <link href="starter-template.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">Blog home</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <#if username??>
                 <li class="active">  <a href="/logout">Logout</a> </u> </li>
                <#else>
                 <li>  <a href="/login">Login</a> </u> </li>
                </#if>
            </ul>
            <form action="/search" method="POST" class="navbar-form navbar-right">
                <input name="tag" type="text" class="form-control" placeholder="Search...">
            </form>
        </div><!--/.nav-collapse -->
    </div>
</nav>

<div class="container" style="margin-top: 50px">

    <div class="starter-template">
        <form action="/newpost" method="POST">
        ${errors!""}
            <h2>Title</h2>
            <input class="form-control" type="text" name="subject" width="120" value="${subject!""}"><br>

            <h2>Blog Entry
                <h2>
                    <textarea  class ="form-control"name="body" cols="120" rows="10">${body!""}</textarea><br>

                    <h2>Tags</h2>
                    Comma separated, please<br>
                    <input class="form-control" type="text" name="tags" width="120" value="${tags!""}"><br>

                    <p>
                        <input type="submit" class="btn btn-primary" value="Submit">
         </div>

</div><!-- /.container -->


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="../../dist/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
