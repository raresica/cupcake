<%@ page import="Model.ModelFacade" %>
<%@ page import="java.util.Map" %>
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
    Map<String, Float> bottomsPrices = ModelFacade.getPricesForBottoms();
    Map<String, Float> toppingsPrices = ModelFacade.getPricesForBottoms();
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
                <li class="active"><a href="#">Home</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>
<div class="container">
<div class="jumbotron">
    <h1>Welcome to the Candy Shop</h1>
    <form method="POST" action="OrderCake">
            <select class="form-control" name="topping">
                <option value="null">- Select Topping -</option>
                <% for ( String b : toppings ) {%>
                <option><%=b%></option>
                <%}%>
            </select>
        <select class="form-control" name="bottom">
            <option value="null">- Select Bottom -</option>
            <% for ( String b : bottoms ) {%>
            <option><%=b%></option>
            <%}%>
        </select>

        <input type="submit" value="submit" class="btn btn-lg btn-primary"/>
    </form>
</div>
</div>

</body>
</html>