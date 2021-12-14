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
<form method="post" id="login" action="${pageContext.request.contextPath}/login">
<h2 class="table_dark">Login</h2>
<table border="1" class="table_dark">
    <td>Login: <input type="text" name="login" form="login" required></td>
    <td>Password: <input type="password" name="password" form="login" required></td>
    <td><button type="submit">Login</button></td>
</table>
</form>
<h4 style="color:red">${errorMsg}</h4>
<h4><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h4>
</body>
</html>
