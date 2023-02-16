<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<h1 class="table_dark">Please enter your login and password:</h1>
<table class="table_dark">
    <tr>
        <th>Login</th>
        <th>Password</th>
        <th>Login</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="login" required>
        </td>
        <td>
            <input type="password" name="password" required>
        </td>
        <td>
        <button type="submit">Login</button>
        </td>
    </tr>
</table>
</form>
<h4 style="color:red">${erorMsg}</h4>
</body>
</html>
