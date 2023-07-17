<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/login">
    <h1 class="table_dark">Login driver</h1>
    <table border="1" class="table_dark">
        <tr>
            <th>Enter your login</th>
            <th>Enter your password</th>
            <th><h4><a href="${pageContext.request.contextPath}/drivers/add">Register new driver</a> </h4></th>
        </tr>
        <tr>
            <td><input type="text" name="login" required></td>
            <td><input type="password" name="password" required></td>
            <td><button type="submit">Login</button></td>
        </tr>
        <tr><td><h4 style="color:red">${errorMessage}</h4> </td></tr>
    </table>
</form>
</body>
</html>
