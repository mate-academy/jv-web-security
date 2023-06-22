<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h2 class="table_dark">Please, enter your login and password</h2>
<h4 class="table_dark" style="color:red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    <table class="table_dark">
        <tr><td>Login  <input type="text" name="name"></td></tr>
        <tr><td>Password  <input type="password" name="password"></td></tr>
        <tr><td><button type="submit">Enter</button></td></tr>
        <tr><td><a href="${pageContext.request.contextPath}/drivers/add">Registration</td></tr>
    </table>
</form>
</body>
</html>
