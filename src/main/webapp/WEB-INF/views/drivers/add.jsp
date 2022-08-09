<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>

<html>
<head>
    <jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
    <title>Add driver</title>
</head>
<body>
<h4 style="color: red">${errorMsg}</h4>
<form method="post" id="driver" action="${pageContext.request.contextPath}/drivers/add"></form>
<h1 class="table_dark_car">Add driver:</h1>
<table class="table_dark">
    <tr>
        <th>Name</th>
        <th>License number</th>
        <th>Login</th>
        <th>password</th>
        <th>Repeat password</th>
        <th>Registration</th>
    </tr>
    <tr>
        <td><input type="text" name="name" form="driver" required></td>
        <td><input type="text" name="license_number" form="driver" required></td>
        <td><input type="text" name="login" form="driver" required></td>
        <td><input type="password" name="password" form="driver" required></td>
        <td><input type="password" name="repeat_password" form="driver" required></td>
        <td><input type="submit" name="register" form="driver"></td>
    </tr>
</table>
</body>
</html>
