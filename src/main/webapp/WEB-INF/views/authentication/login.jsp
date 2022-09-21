<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form method="post" id="redirect"></form>
<h1 class="table_dark">Enter login and password</h1>
<table border="1" class="table_dark">
    <tr>
        <th>User name</th>
        <th>Password</th>
        <th>Login</th>
    </tr>
    <h2 style="color: red">${error_message}</h2>
    <tr>
        <td>
            <input type="text" name="user_name" form="redirect" required>
        </td>
        <td>
            <input type="password" name="password" form="redirect" required>
        </td>
        <td>
            <input type="submit" name="login" form="redirect">
        </td>
    </tr>
</table>
<br>
<h3></h3><a style="color: #7C5FAB" href="${pageContext.request.contextPath}/drivers/add">Register new driver</a></h3>
</body>
</html>
