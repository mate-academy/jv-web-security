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
<%@include file="/WEB-INF/views/header.jsp"%>
<form method="post" id="driver" action="${pageContext.request.contextPath}/drivers/add"></form>
<h1 class="table_dark">Register driver:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Name</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="name" form="driver" required>
        </td>
    </tr>
    <tr>
        <th>License number</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="license_number" form="driver" required>
        </td>
    </tr>
    <tr>
        <th>Login</th>
    </tr>
    <td>
        <input type="text" name="login" form="driver" required>
    </td>
    <tr>
        <th>Password</th>
    </tr>
    <td>
        <input type="password" name="password" form="driver" required>
    </td>
    <tr>
        <th>Repeat Password</th>
    </tr>
    <td>
        <input type="password" name="repeatPassword" form="driver" required>
    </td>
    <tr>
        <td>
         <input type="submit" name="add" form="driver">
        </td>
    </tr>
</table>
</body>
</html>
