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
<h1 class="table_dark">Login driver</h1>
<h4 class="table_dark" style="color:red">${errorMsq}</h4>
<table border="1" class="table_dark">
    <tr>
        <td>Login</td>
    </tr>
    <tr>
        <td><input type="text" name="login" form="driver" required></td>
    </tr>
    <tr>
        <td>Password</td>
    </tr>
    <tr>
        <td><input type="password" name="password" form="driver"></td>
    </tr>
    <tr>
        <td>LogIn</td>
    </tr>
    <tr>
        <td><input type="submit" name="add" form="driver"></td>
    </tr>
    <tr>
        <td><a href="${pageContext.request.contextPath}/drivers/add">Registration</a></td>
    </tr>
</table>
</body>
</html>
