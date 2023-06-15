<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<%@include file="header.jsp"%>
<body>
<h1> Login page </h1>
<h4 style="color: red">${errorMsg}</h4>

<form method="post"  id = "login" action="${pageContext.request.contextPath}/login">

<table class="table_dark">
    <tr>
        <th>Login</th>
        <th>Password</th>
        <th>Login</th>
        <th>New Driver</th>
    </tr>
    <tr>
    <td>
        <input type="text" name="login" form="login" required>
    </td>
    <td>
        <input type="text" name="password" form="login" required>
    </td>
    <td>
        <input type="submit" name="LoginButton" form="login" title="Login">
    </td>
        <td>
            <a href="${pageContext.request.contextPath}/drivers/add">Create new Driver</a>
        </td>
    </tr>
</table>
</form>
</body>
</html>
