<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link type="text/css"
	href="css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.18.custom.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<title>User management system</title>
</head>
<body>
	<nav class="navbar navbar-default">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="UserController?action=listUser"> User management system </a>
		</div>
	</div>
	</nav>
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">Add new user</h3>
			</div>
			<div class="panel-body">
				<form method="POST" action='UserController' name="frmAddUser" class="form-horizontal">
				<div class="form-group">
					<label class="control-label col-sm-2"> User ID :</label>
					<div class="col-sm-4">
						<input class="form-control" type="text" readonly="readonly" name="userid" value="<c:out value="${user.userid}" />" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2"> First Name :</label>
					<div class="col-sm-4">
						<input class="form-control" type="text" name="firstName"
						value="<c:out value="${user.firstName}" />" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2"> Last Name :</label>
					<div class="col-sm-4">
						<input class="form-control" type="text" name="lastName"
						value="<c:out value="${user.lastName}" />" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2"> Date of Birth: </label>
					<div class="col-sm-4">
						<input class="form-control" type="text" name="dob"
						value="<fmt:formatDate pattern="MM/dd/yyyy" value="${user.dob}" />" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2"> Email :</label>
					<div class="col-sm-4">
						<input class="form-control" type="email" name="email"
						value="<c:out value="${user.email}" />" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-4">
						<input type="submit" value="Submit" class="btn btn-success btn-block"/>
					</div>
				</div>
					
				</form>
			</div>
		</div>
	</div>

	<footer class="footer">
	<div class="container">
		<p class="text-muted">(c) All rights reserved. Rares Catalin
			Onescu.</p>
	</div>
	</footer>



	<script>
		$(function() {
			$('input[name=dob]').datepicker();
		});
	</script>
</body>
</html>