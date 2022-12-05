<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form method="post" id="login" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Login page</h1>
<h4 class="table_dark" style="color: red">${errorMsg}</h4>
<table border="1" class="table_dark">
    <tr><td>Enter your login: <input type="text" name="login" form="login" required></td></tr>
    <tr><td>Enter your password: <input type="password" name="password" form="login" required></td></tr>
    <tr><td><button type="submit" form="login">Login</button></td></tr>
    <tr><td><h4><a href="${pageContext.request.contextPath}/drivers/add">add driver</a></h4></td></tr>
</table>
</body>
</html>
