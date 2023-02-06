<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1 class="table_dark">Log in to service</h1>
<h3 style="color: red">${errorMessage}</h3>
<form method="post" id="login" action="${pageContext.request.contextPath}/login">
<table class="table_dark">
        <tr><td>Login<input type="text" name="login" required></td></tr>
        <tr><td>Password<input type="password" name="password" required></td></tr>
        <tr><td>Log in<input type="submit" name="Log in" required></td></tr>
</table>
</form>
<h4><a href="${pageContext.request.contextPath}/registration">Register</a></h4>
</body>
</html>
