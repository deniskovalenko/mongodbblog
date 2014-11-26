<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Admin!!! Blog based on mongoDB</title>

    <!-- Bootstrap core CSS -->
    <link href="/style/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
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
            <#--<li class="active"><a href="#">Home</a></li>-->
            <#if username??>
                <li>  <a href="/logout">Logout</a> </u> </li>
                <li>   <a href="/admin/newpost">New Post</a> </li>
            </#if>


            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>

<div class="container" style="margin-top: 30px">

    <div class="starter-template">
        h1>My Blog</h1>
        <br>
        <ul class="pagination">
        <#if tag??>
            <#if 0 < page >
                <li><a href="/admin/tag/${tag}/${page-1}">prev</a></li>
            </#if>
            <li><a href="/admin/tag/${tag}/${page+1}">next</a></li>
        <#else>
            <#if 0 < page >
                <li> <a href="/admin/page/${page-1}">prev</a></li>
            </#if>
            <li>
                <a href="/admin/page/${page+1}">next</a>
            </li>
        </#if>
        </ul>

    <#assign elementCount =0>
    <#list myposts as post>
        <h2><a href="/admin/post/${post["permalink"]}">${post["title"]}</a></h2>
        Posted ${post["date"]?datetime} <i> By
        <a href="/admin/user/${post["author"]}/0">
        ${post["author"]}
        </a></i>
        <br>
        Comments:
        <#if post["comments"]??>
            <#assign numComments = post["comments"]?size>
        <#else>
            <#assign numComments = 0>
        </#if>

        <a href="/admin/post/${post["permalink"]}">${numComments}</a>
        <hr>
        <div style="width: 60%; text-align: left">
        ${post["body"]!""}
        </div>

        <em>Filed Under</em>:
        <#if post["tags"]??>
            <#list post["tags"] as tag>
                <a href="/admin/tag/${tag}/0">${tag}</a>
            </#list>
        </#if>
        <#assign elementCount=elementCount+1>
    </#list>
        <br>
        <ul class="pagination">
        <#if tag??>
            <#if 0 < page >
                <li><a href="/admin/tag/${tag}/${page-1}">prev</a></li>
            </#if>
            <li><a href="/admin/tag/${tag}/${page+1}">next</a></li>
        <#else>
            <#if 0 < page >
                <li> <a href="/admin/page/${page-1}">prev</a></li>
            </#if>
            <li>
                <#if 9 < elementCount><a href="/admin/page/${page+1}">next</a></#if>
            </li>
        </#if>
        </ul>


    </div>

</div><!-- /.container -->


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="../../dist/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>