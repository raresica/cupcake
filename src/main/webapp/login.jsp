<%@ page import="Model.ModelFacade" %>
<%@ page import="java.util.Map" %>
<%@ page import="Utils.MyUtils" %>
<%@ page import="Model.User" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <title>Cupcake store</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<%
    String[] toppings = ModelFacade.getToppings();
    String[] bottoms = ModelFacade.getBottoms();
%>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">Candy shop </a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="/">Home</a></li>
                <li class="active"><a href="/register.jsp">Register</a></li>
                <li class="active"><a href="/login.jsp">Login</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <div class="jumbotron">
        <h3>Login Page</h3>

        <p style="color: red;">${errorString}</p>

        <form method="POST" action="doLogin">
            <table border="0">
                <tr>
                    <td><label>User Name</label></td>
                    <td><input class="form-control" type="text" name="userName" value= "${user.getUsername()}" /> </td>
                </tr>
                <tr>
                    <td><label>Password</label></td>
                    <td><input class="form-control" type="password" name="password" value= "" /> </td>
                </tr>
                <tr>
                    <td colspan ="2">
                        <input class="btn btn-primary" type="submit" value= "Submit" />
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>

</body>
</html>

