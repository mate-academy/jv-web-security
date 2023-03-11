<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
    <h4 style="color: red">${errorMsg}</h4>
</head>
<body>
<h1 class="table_dark">Login page</h1>
<form method="post" id="driver" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Login</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Enter your login</th>
        <th>Enter your password</th>
        <th>Login</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="login" form="driver" required>
        </td>
        <td>
            <input type="password" name="password" form="driver" required>
        </td>
        <td>
            <input type="submit" name="Login" form="driver" required>
        </td>
    </tr>
</table>
<h4><a href="${pageContext.request.contextPath}/drivers/add">Create new Driver</a></h4>
</body>
</html>
