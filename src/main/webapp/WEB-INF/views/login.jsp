<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login form</title>
</head>
<body>
<h4 style="color:red">${errorMsg}</h4>
<form method="post" id="login" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Login into system:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Login</th>
        <th>Password</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="login" form="login" required>
        </td>
        <td>
            <input type="password" name="password" form="login" required>
        </td>
        <td>
            <input type="submit" name="login" form="login">
        </td>
    </tr>
</table>
<a href="${pageContext.request.contextPath}/drivers/add">Register</a>
</body>
</html>