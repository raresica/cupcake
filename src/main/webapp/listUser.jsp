<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>User management system</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
				<h3 class="panel-title">Show All Users</h3>
				<a class="btn btn-warning btn-sm" href="UserController?action=listUser&sort=1">
						Sort by Last Name</a>
				<a class="btn btn-warning btn-sm" href="UserController?action=listUser&sort=2">
				Sort by Date of Birth</a>
			</div>
			<div class="panel-body">
				<table border=1 class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>User Id</th>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Date of Birth</th>
							<th>Email</th>
							<th colspan=2>Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${users}" var="user">
							<tr>
								<td><c:out value="${user.userid}" /></td>
								<td><c:out value="${user.firstName}" /></td>
								<td><c:out value="${user.lastName}" /></td>
								<td><fmt:formatDate pattern="yyyy-MMM-dd"
										value="${user.dob}" /></td>
								<td><c:out value="${user.email}" /></td>
								<td><a class="btn btn-primary"
									href="UserController?action=edit&userId=<c:out value="${user.userid}"/>">Update</a></td>
								<td><a class="btn btn-danger"
									href="UserController?action=delete&userId=<c:out value="${user.userid}"/>">Delete</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<p>
					<a class="btn btn-success" href="UserController?action=insert">Add
						User</a>
				</p>
			</div>
		</div>
	</div>

	<footer class="footer">
	<div class="container">
		<p class="text-muted">(c) All rights reserved. Rares Catalin
			Onescu.</p>
	</div>
	</footer>
</body>
</html>