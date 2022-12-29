<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form method="post" id="login_driver" action="${pageContext.request.contextPath}/drivers/login"></form>
<h1 class="table_dark">Login:</h1>
<h4 class="table_dark" style="color:red">${error_msg}</h4>
<table border="1" class="table_dark">
    <tr>
        <th>Login</th>
        <th>Password</th>
        <th>Add</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="login" form="login_driver" required>
        </td>
        <td>
            <input type="text" name="password" form="login_driver" required>
        </td>
        <td>
            <input type="submit" name="login_button" form="login_driver">
        </td>
    </tr>
    <tr>
        <td>
            <a href="${pageContext.request.contextPath}/drivers/create">Register</a>
        </td>
    </tr>
</table>
</body>
</html>
