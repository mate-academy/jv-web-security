<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login page</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/login">
<h1 class="table_dark">Let's login first, mate!</h1>
<table class="table_dark">
    <tr>
        <th>Please enter your credentials</th>
    </tr>
    <tr><td>Login:    <input type="text" name="login" required></td></tr>
    <tr><td>Password: <input type="password" name="password" required></td></tr>
    <tr><td><button type="submit">Login</button><h4 style="color: darkmagenta">${errorMessage}</h4></td></tr>
</table>
</form>
<table class="table_dark">
    <tr>
        <th>A new one here? Welcome to our Taxi family!</th>
    </tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/add">Click here to register</a></td></tr>
</table>
</body>
</html>
