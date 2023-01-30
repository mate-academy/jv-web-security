<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>Register</title>
<style>
    html * {
        font-size: 16px;
        line-height: 1.625;
        color: #000000;
        font-family: Nunito, sans-serif;
    }
</style>
</head>
<body bgcolor="#ffd700">
<div align="center ">
<%@include file="/WEB-INF/views/header.jsp"%>
<form method="post" id="driver" action="${pageContext.request.contextPath}/drivers/add"></form>
<h1>ADD DRIVER</h1>
<table align="center" border="1">
    <tr>
        <th>Login</th>
        <th>Password</th>
        <th>Name</th>
        <th>License number</th>
        <th>Add</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="login" form="driver" required>
        </td>
        <td>
            <input type="password" name="password" form="driver" required>
        </td>
        <td>
            <input type="text" name="name" form="driver" required>
        </td>
        <td>
            <input type="text" name="license_number" form="driver" required>
        </td>
        <td>
            <input type="submit" name="add" form="driver">
        </td>
    </tr>
</table>
</div>
</body>
</html>
