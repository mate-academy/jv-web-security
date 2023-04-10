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
<h4 style="color:red">${errorMsg}</h4>
<h1 class="table_dark">Input your login and password</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Login</th>
        <th>Password</th>
        <th>send</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="login" form="login" required>
        </td>
        <td>
            <input type="text" name="password" form="login" required>
        </td>
        <td>
            <input type="submit" name="try_login" form="login">
        </td>
    </tr>
</table>
<a class="table_dark" href="${pageContext.request.contextPath}/register">Register</a>
</body>
</html>
