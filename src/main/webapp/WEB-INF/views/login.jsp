<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login page</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/login">
    <h1 class="table_dark">Please login</h1>
    <table class="table_dark">
        <tr>
            <th>Login</th>
            <th>Password</th>
            <th><a href="${pageContext.request.contextPath}/register">Register new driver</a></th>

        </tr>
        <tr>
            <td><input type="text" name="login" required></td>
            <td><input type="password" name="password" required></td>
            <td><input type="submit" value="Login"></td>
        <tr>
    </table>
</form>
<h4 style="color:red">${errorMsg}</h4>
</body>
</html>
