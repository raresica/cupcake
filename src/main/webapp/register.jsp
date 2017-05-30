<%--
  Created by IntelliJ IDEA.
  User: Rares
  Date: 30-May-17
  Time: 9:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <h1>Create new account</h1>
    </head>
<body>
    <form method="post">
        <div class="row">
            <div class="col-sm-6">
                <label for="username">Name:</label>
                <input id="username" class="form-control" type="text" name="username" required>
            </div>

            <br>

            <div class="col-sm-12">
                <label for="password">Password:</label>
                <input id="password" class="form-control" type="password" name="password" required>
            </div>
        </div>
        <hr>
        <button class="btn btn-primary">Create an account</button>
    </form>
</body>
</html>
