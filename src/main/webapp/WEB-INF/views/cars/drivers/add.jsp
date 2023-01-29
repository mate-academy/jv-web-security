<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add driver to car</title>
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
<form method="post" id="car" action="${pageContext.request.contextPath}/cars/drivers/add"></form>
<h1>ADD DRIVER TO CAR</h1>
<table align="center" border="1">
    <tr>
        <th>Car ID</th>
        <th>Driver ID</th>
        <th>Add</th>
    </tr>
    <tr>
        <td>
            <input type="number" name="car_id" form="car" required>
        </td>
        <td>
            <input type="number" name="driver_id" form="car" required>
        </td>
        <td>
            <input type="submit" name="add" form="car">
        </td>
    </tr>
</table>
</div>
</body>
</html>
