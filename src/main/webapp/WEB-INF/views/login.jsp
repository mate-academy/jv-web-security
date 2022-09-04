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
<h4 style="color:red">${errorMsg}</h4>
<form method="post" id="login" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Authorization</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Your login</th>
        <th>Your password</th>
        <th>Log in</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="login" form="login" required>
        </td>
        <td>
            <input type="password" name="password" form="login" required>
        </td>
        <td>
            <input type="submit" name="Log in" form="login">
        </td>
    </tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/add">Register</a></td></tr>
</table>
</body>
</html>
