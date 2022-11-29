<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h4 style="color: red">${error_message}</h4>
<form method="post" id="login" action="${pageContext.request.contextPath}/login">
    <h3>Enter login</h3>
    <input type="text" name="username" form="login" required><br>
    <h3>Enter password</h3>
    <input type="password" name="password" form="login" required><br>
    <button type="submit" name="go" form="login">Go</button>
</form>
<h4><a href="${pageContext.request.contextPath}/drivers/add">Register new driver.</a></h4>
</body>
</html>
