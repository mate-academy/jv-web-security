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
<form method="post" id="driver" action="${pageContext.request.contextPath}/drivers/add"></form>
<%@include file='/WEB-INF/views/header.jsp' %>
<h1 class="table_dark">Registration new driver:</h1>
<h4 class="table_dark" style="color:red">${errorMsq}</h4>
<table border="1" class="table_dark">
    <tr>
    <tr>
        <td>Name</td>
    </tr>
    <tr>
        <td><input type="text" name="name" form="driver" required></td>
    </tr>
    <tr>
        <td>License number</td>
    </tr>
    <tr>
        <td><input type="text" name="license_number" form="driver" required></td>
    </tr>
    <tr>
        <td>Login</td></tr>
    <tr>
        <td><input type="text" name="login" form="driver" required></td>
    </tr>
    <tr>
        <td>Password</td></tr>
    <tr>
        <td><input type="password" name="password" form="driver" required></td></tr>
    <tr>
        <td>Confirm password</td>
    </tr>
    <tr>
        <td><input type="password" name="confirmPassword" form="driver" required></td>
    </tr>
    <tr>
        <td>Add</td>
    </tr>
    <tr>
        <td><input type="submit" name="add" form="driver"></td>
    </tr>
    </tr>
</table>
</body>
</html>
