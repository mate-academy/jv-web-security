<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form method="post" id="driver" action="${pageContext.request.contextPath}/login"></form>

<h1 class="table_dark">Login page:</h1>
<h1 class="table_dark" style="color: red">${errorMsg}</h1>

<table border="1" class="table_dark">
    <tr><th>Enter your login</th></tr>
    <tr><td><input type="text" name="login" form="driver" required></td></tr>
    <tr><th>Enter your password</th></tr>
    <tr><td><input type="password" name="password" form="driver" required></td></tr>
    <tr><td><input type="submit" id="add" name="add" form="driver" ></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/add"> Registration</a></td></tr>
</table>
</body>
</html>
