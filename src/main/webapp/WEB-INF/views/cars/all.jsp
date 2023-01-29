<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All cars</title>
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
<h1>ALL CARS</h1>
<table align="center" border="1">
    <tr>
        <th>ID</th>
        <th>Model</th>
        <th>Manufacturer name</th>
        <th>Manufacturer country</th>
        <th>Drivers</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="car" items="${cars}">
        <tr>
            <td>
                <c:out value="${car.id}"/>
            </td>
            <td>
                <c:out value="${car.model}"/>
            </td>
            <td>
                <c:out value="${car.manufacturer.name}"/>
            </td>
            <td>
                <c:out value="${car.manufacturer.country}"/>
            </td>
            <td>
                <c:forEach var="driver" items="${car.drivers}">
                    ${driver.id} ${driver.name} ${driver.licenseNumber} ${driver.login} <br>
                </c:forEach>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">DELETE</a>
            </td>
        </tr>
    </c:forEach>
</table>
</div>
</body>
</html>
