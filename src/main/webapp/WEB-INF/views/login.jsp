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
<h1 class="table_dark">Login:</h1>
<table class="table_dark">
    <tr>
        <th>Login</th>
        <th>Password</th>
        <th></th>
        <th></th>
    </tr>
    <tr>
        <td>
            <input type="text" placeholder="User name" name="user_name" form="login">
        </td>
        <td>
            <input type="password" placeholder="Password" name="password" form="login">
        </td>
        <td>
            <input type="submit" name="Login" value="login" form="login">
        </td>
        <td>
            <a href="${pageContext.request.contextPath}/drivers/add">
                <input type="button" value="registration" name="registration">
            </a>
        </td>
    </tr>
</table>
<h4 align="center" style="color: red;">${errorMsg}</h4>
</body>
</html>
