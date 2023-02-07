<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Log in</title>
</head>
<body>
<form method="post" id="driver" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Log In</h1>
<table class="table_dark">
    <tr><td>Please enter your login: <input type="text" name="login" form="driver" required></td></tr>
    <tr><td>Please enter your password: <input type="password" name="password" form="driver" required></td></tr>
</table>
<table class="table_dark">
<tr><td><a style="color:red">${errorMsg}</a></td></tr>
</table>
<table class="table_dark">
    <tr><td><input type="submit" name="log in" form="driver"></tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/add">Sign up</a></td></tr>
</table>
</body>
</html>
