<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h4 style="color: red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
<h1 class="table_dark">Login page</h1>
<h4 align="center">Please enter your login: <input type="text" name="login" required></h4>
<h4 align="center">Please enter your password: <input type="password" name="password" required></h4>
<h4 align="center"><button type="submit">Login</button></h4>
</form>
<h4 align="center"><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h4>
</body>
</html>
