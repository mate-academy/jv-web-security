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
<form method="post" id="login" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">
    Login:
    <span style="color: red">${errorMessage}</span>
</h1>
<h1 class="table_dark">
    Or
    <a href="${pageContext.request.contextPath}/drivers/add">create an account</a>
</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Login</th>
        <th>Password</th>
        <th>Login</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="login" form="login" required>
        </td>
        <td>
            <input type="password" name="password" form="login" required>
        </td>
        <td>
            <input type="submit" name="button" form="login">
        </td>
    </tr>
</table>
</body>
</html>
