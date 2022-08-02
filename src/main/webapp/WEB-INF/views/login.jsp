<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h4 style="color:red">${errorMsg}</h4>
<form method="post">
<h1 class="table_dark">Login page</h1>
<table class="table_dark">
<tr>
    <td>Login:<input type="text" name = "login"></td>
    <td>Password:<input type="password" name = "password"></td>
    <td><input type="submit" value="Login"></td>
</tr>
<tr>
    <td colspan="3">
        <a href="${pageContext.request.contextPath}/drivers/add">Register</a>
    </td>
</tr>
</table>
</form>
</body>
</body>
</body>
</html>