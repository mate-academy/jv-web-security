<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<%@include file="/WEB-INF/views/header.jsp"%>
<h1 class="table_dark">All cars:</h1>
<table border="1" class="table_dark">
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
                <c:set var="urlPattern" value="${urlPattern}"/>
                <c:if test="${urlPattern == '/cars'}">
                    <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">DELETE</a>
                </c:if>
                <c:if test="${urlPattern == '/drivers/cars'}">
                    <a href="${pageContext.request.contextPath}/cars/drivers/delete?id=${car.id}">DELETE</a>
                </c:if>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
