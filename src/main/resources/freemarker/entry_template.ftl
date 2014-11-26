<!doctype HTML>
<html
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
    <title>
        Blog Post - ${post["title"]}
    </title>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" style="margin-bottom: 50px">
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
                <li>  <a href="/logout">Logout</a> </u> </li>
                <li>   <a href="/newpost">New Post</a> </li>
            <#else>
                <li>  <a href="/login">Login</a> </u> </li>
            </#if>


            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>
<div class="container" style="margin-top: 30px">

    <div class="starter-template">
<h2><label class="label label-success">${post["title"]} </label></h2>
Posted ${post["date"]?datetime}<i> By
        <a href="/user/${post["author"]}/0">
            ${post["author"]}
        </a></i>
    <#if post["author"]=username>
        <br>
        <a href="/delete/${post["permalink"]}" class="btn btn-danger">Delete</a>
    </#if>
<br>
<hr>
<div class="jumbotron">
${post["body"]}
</div>

<p>
    <em>Filed Under</em>:
    <#if post["tags"]??>
        <#list post["tags"] as tag>
            <a href="/tag/${tag}">${tag}</a>
        </#list>
    </#if>
<p>
    Comments:
<ul>
    <#if post["comments"]??>
        <#assign numComments = post["comments"]?size>
            <#else>
                <#assign numComments = 0>
    </#if>
    <#if (numComments > 0)>
        <#list 0 .. (numComments -1) as i>
            <br>
            <div class="row">
                <a href="/user/${post["comments"][i]["author"]}/0">
                        <strong>${post["comments"][i]["author"]}</strong>
                </a>
            </div>

            ${post["comments"][i]["body"]}<br>
            <hr>
        </#list>
    </#if>
    <h3><label class="label-warning">Add a comment </label></h3>

    <form action="/newcomment" method="POST">
        <input type="hidden" name="permalink", value="${post["permalink"]}">
        ${errors!""}<br>
        <b>Name</b> (required)<br>
        <input class="form-control" type="text" name="commentName" size="60" value="${comment["name"]}"><br>
        <b>Email</b> (optional)<br>
        <input class="form-control" type="text" name="commentEmail" size="60" value="${comment["email"]}"><br>
        <b>Comment</b><br>
        <textarea class="form-control" name="commentBody" cols="60" rows="10">${comment["body"]}</textarea><br>
        <input class="btn btn-primary" type="submit" value="Submit">
    </form>
</ul>
        </div>
    </div>
</body>
</html>


