<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form method="post" id="login" action="${pageContext.request.contextPath}/login"></form>
    <h1 class="table_dark">Login page</h1>
    <table border="1" class="table_dark">
        <h4 style="color:red">${errorMsg}</h4>
        <tr>
            <th>Please enter your login:</th>
            <th>Please enter your password:</th>
            <th>Login</th>
            <th>Register</th>
        </tr>
        <tr>
            <td>
                <input type="text" name="login" form="login" required>
            </td>
            <td>
                <input type="password" name="password" form="login" required>
            </td>
            <td>
                <input type="submit" name="Login" form="login" required>
            </td>
            <td><a href="${pageContext.request.contextPath}/drivers/add">Register</a></td>
        </tr>
</body>
</html>
