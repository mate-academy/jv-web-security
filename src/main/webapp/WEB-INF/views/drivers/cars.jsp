<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../header.jsp"%>
<style>
    <%@include file='/WEB-INF/views/css/tables.css' %>
</style>
<html>
<head>
    <title>Taxi service</title>
</head>
<body>
<h1 class="steelBlueCols">
    <br>
    Main info
    <br>
    <br>
    ID: ${driver.id}
    <br>
    Name: ${driver.name}
    <br>
    License number: ${driver.licenseNumber}
    <br>
    <br>
</h1>
<table class="steelBlueCols">
    <h1 class="steelBlueCols">All my cars</h1>
    <thead>
    <tr>
        <th>ID</th>
        <th>Model</th>
        <th>Manufacturer name</th>
        <th>Manufacturer country</th>
        <th>Delete</th>
    </tr>
    </thead>
    <tbody>
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
                <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}&back=true" id="main">DELETE</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
