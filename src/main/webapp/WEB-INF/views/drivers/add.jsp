<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Registration</title>
</head>
<body>
<form method="post" id="driver" action="${pageContext.request.contextPath}/register"></form>
<h1 class="table_dark">Register new driver</h1>
<table class="table_dark">
    <tr>
        <th>Login</th>
        <th>Name</th>
    </tr>
    <tr>
        <td><input type="text" name="login" form="driver" required></td>
        <td><input type="text" name="name" form="driver" required></td>

    </tr>
    <tr>
        <th>Password</th>
        <th>License number</th>
    </tr>
    <tr>
        <td><input type="password" name="password" form="driver" required></td>
        <td><input type="text" name="license_number" form="driver" required></td>
    </tr>
    <tr>
        <th>Repeat password</th>
    </tr>
    <tr>
        <td><input type="password" name="password_repeat" form="driver" required></td>
        <td><input type="submit" name="add" form="driver"></td>
    </tr>
</table>
<h4 style="color:red">${errorMsg}</h4>
</body>
</html>
