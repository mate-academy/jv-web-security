<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1>Login Page</h1>
<form method="post" action="${pageContext.request.contextPath}/login">
    Please enter your login: <input type="text" name="login" required>
    Please enter your password: <input type="password" name="password" required>
    <button type="submit">Login</button>
</form>
<h4><a href="${pageContext.request.contextPath}/register">Register</a> </h4>
</body>
</html>
