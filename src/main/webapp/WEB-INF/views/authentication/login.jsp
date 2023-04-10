<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<head>
    <title>Title</title>
</head>
<body>
<h1 class="table_dark">Login</h1>
<h4 style="color:red">${errorMsg}</h4>
<form method="post" id="login" action="${pageContext.request.contextPath}/login"></form>
<table border="1" class="table_dark">
    <tr>
        <th>Username</th>
        <th>Password</th>
        <th>Login</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="username" form="login" required>
        </td>
        <td>
            <input type="password" name="password" form="login" required>
        </td>
        <td>
            <input type="submit" name="login" form="login">
        </td>
    </tr>
</table>
<a href="/drivers/add">Register</a>
</body>
</html>
