<%@ page import="Model.ModelFacade" %>
<%@ page import="java.util.Map" %>
<%@ page import="Utils.DbAccessLayer" %>
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
    Map<String, Float> bottomsPrices = ModelFacade.getPricesForBottoms();
    Map<String, Float> toppingsPrices = ModelFacade.getPricesForToppings();
    String bottom = request.getParameter( "bottom");
    String topping = request.getParameter( "topping");
    float bottomPrice = bottomsPrices.get(bottom);
    float toppingPrice = toppingsPrices.get(topping);
    float total = bottomPrice + toppingPrice;

    User loggedUser = MyUtils.getLoggedUser();
    float balance = loggedUser == null ? 0 : loggedUser.getBalance();
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
        <h1>Your order</h1>
        <p>Bottom: <%=bottom%>  <%=bottomPrice%></p>
        <p>Topping: <%=topping%>   <%=toppingPrice%></p>
        <p>Total: <%=total%> </p>
        <p>Balance: <%=balance%> </p>
        <p>(and our counter is: <%= session.getAttribute( "counter") %> )</p>
    </div>
</div>

</body>
