<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login page</title>
</head>
<body>
<main class="table_dark">
<h1>Are you a driver? Please, login</h1>
<h4 style="color: red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    Login: <input type="text" name="login" required>
    Password: <input type="password" name="password" required>
    <button type="submit">Login</button>
    <br>
</form>
<a href="/drivers/add">Register</a>
</main>
</body>
</html>
