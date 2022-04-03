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
<h1 class="table_dark">Login page</h1>
<table border="1" class="table_dark">
<form method="post" id="login" action="${pageContext.request.contextPath}/login"></form>
    <tr>
        <th>Login</th>
        <th>Password</th>
        <th>Submit credentials</th>
        <th>Register new driver</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="login" form="login" required>
        </td>
        <td>
            <input type="password" name="password" form="login" required>
        </td>
        <td>
            <input type="submit" name="add" form="login">
        </td>
        <td>
            <a href="${pageContext.request.contextPath}/drivers/add">Click Here</a>
        </td>
    </tr>
</table>
<p align="center">
<a style="color:red">${errorMsg}</a>
</p>
</body>
</html>
