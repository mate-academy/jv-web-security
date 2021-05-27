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
<h1>Login Page</h1>
<h4 style="color: red">${errorMessage}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    Please enter your login: <input type="text" name="login" required> <br>
    Please enter your password: <input type="password" name="password" required> <br>
    <button type="submit">Login</button>
</form>
<a href="${pageContext.request.contextPath}/drivers/add"><button type="submit">Register</button></a>
</body>
</html>
