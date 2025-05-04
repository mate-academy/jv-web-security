<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <style>
        <%@include file='/WEB-INF/views/css/table_dark.css' %>
    </style>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/login" id="login-form"></form>
<h1 class="table_dark">LOG IN</h1>
<h4 class="invalid-login">${errorMsg}</h4>
<table class="table_dark">
    <tr>
        <th><label for="login">Login</label></th>
        <th><label for="password">Password</label></th>
        <th></th>
    </tr>
    <tr>
        <td>
            <input type="text" name="login" id="login" form="login-form" required>
        </td>
        <td>
            <input type="password" name="password" id="password" form="login-form" required>
        </td>
        <td>
            <input type="submit" name="add" form="login-form" value="Login">
        </td>
    </tr>
</table>
</body>
</html>
