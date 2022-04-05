<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<h1><%@include file="/WEB-INF/views/header.jsp"%></h1>
<form method="post" id="driver" action="${pageContext.request.contextPath}/drivers/add"></form>
<h1 class="table_dark">Add driver:</h1>
<h1 class="table_dark" style="color: red">${errorMsg}</h1>
<table border="1" class="table_dark">
    <tr><th>Login</th></tr>
    <tr><td><input type="text" name="login" form="driver" required></td></tr>
    <tr><th>Password</th></tr>
    <tr><td><input type="password" name="password" form="driver" required></td></tr>
    <tr><th>Confirm password</th></tr>
    <tr><td><input type="password" name="confirm_password" form="driver"></td></tr>
    <tr><th>Name</th></tr>
    <tr><td><input type="text" name="name" form="driver" required></td></tr>
    <tr><th>License number</th></tr>
    <tr><td><input type="text" name="license_number" form="driver" required></td></tr>
    <tr><td><input type="submit" name="add" form="driver"></td></tr>
</table>
</body>
</html>
