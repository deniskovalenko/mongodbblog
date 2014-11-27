<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Sign Up</title>


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
    <#--Already a user? <a href="/login">Login</a><p>-->

<div align="center" style="margin-top: 100px">
    <h2 class="form-signin-heading">Sign up!</h2>

    <form class="form" method="post">

        <label for="inputEmail" class="">Username</label>
        <input name="username" value="${username}" type="text" id="inputEmail" class="form-control"  style="width:250px;height:35px" placeholder="Email address" required autofocus>


        <div class="error">
	        ${username_error!""}
        </div>

        <label for="inputPassword" class="">Password</label>
        <input type="password"name="password" value="" id="inputPassword" class="form-control"  style="width:250px;height:35px" placeholder="Password" required>

        <div class="error">
	            ${password_error!""}
        </div>

        <label for="inputPassword" class="">Verify password</label>
        <input type="password"name="verify" value="" id="inputPassword" class="form-control"  style="width:250px;height:35px" placeholder="Password" required>

        <div class="error">
	             ${verify_error!""}
        </div>
            

        <label class="">Email (optional)</label>
        <input type="text" name="email" value="${email}" class="form-control"  style="width:250px;height:35px">

        <div class="error">
	         ${email_error!""}
        </div>
      <input class="btn btn-primary" style="margin-top: 10px" type="submit">
 </form>
        </div>


  </body>
  <footer class="footer">
      <div class="container">
          <p class="text-muted" style="text-align: center">Denis Kovalenko 2014</p>
      </div>
  </footer>
</html>
