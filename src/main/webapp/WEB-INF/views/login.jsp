<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login page</title>
</head>
<body>
<h1 class="table_dark">Login</h1>
<table class="table_dark"><tr><td>${errorMsg}<tr><td></table>
<table class="table_dark">
    <form method="post" action="${pageContext.request.contextPath}/login">
        <tr><td>Login: <input type="text" name="login"></td></tr>
        <tr><td>Password: <input type="password" name="password"></td></tr>
        <tr><td><button type="submit">Login</button></td></tr>
        <tr><td><a href="${pageContext.request.contextPath}/drivers/add">Registration</a></td></tr>
    </form>
</table>
</body>
</html>
