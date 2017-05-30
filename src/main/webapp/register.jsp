<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <title>Cupcake store</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<%

%>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">Candy shop</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="/">Home</a></li>
                <li class="active"><a href="/register.jsp">Register</a></li>
                <li class="active"><a href="/login.jsp">Login</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>
<div class="container">
    <div class="jumbotron">
        <br/>
        <br/>
        <br/>
        <p style="color: red;">${errorString}</p>
        <form method="post" action="/register">
            <div class="row">
                <div class="col-sm-6">
                    <label for="username">Name:</label>
                    <input id="username" class="form-control" type="text" name="username" required>
                </div>
</div>
            <div class="row">

            <br>

                <div class="col-sm-6">
                    <label for="password">Password:</label>
                    <input id="password" class="form-control" type="password" name="password" required>
                </div>
            </div>
            <hr>
            <button class="btn btn-primary">Create an account</button>
        </form>
    </div>
</div>
</body>
</html>
