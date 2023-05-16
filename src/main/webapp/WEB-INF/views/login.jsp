<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login to my Taxi</title>
</head>
<body>
<table class="table_dark">
    <tr>
        <th align="right"><a href="${pageContext.request.contextPath}/drivers/add">Add Driver</th>
    </tr>
</table>
<form method="post" id="login-form" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Hello, please log in to access the app!</h1>
<table border="1" class="table_dark">
    <tr>
        <th><h4 class="alert-msg">${errorMsg}</h4></th>
    </tr>
</table>
<table border="1" class="table_dark">
    <tr>
        <th>login</th>
        <th>Password</th>
        <th>Login</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="login" form="login-form" required>
        </td>
        <td>
            <input type="password" name="password" form="login-form" required>
        </td>
        <td>
            <input type="submit" name="add" form="login-form" value="Login">
        </td>
    </tr>
</table>

</body>
</html>
