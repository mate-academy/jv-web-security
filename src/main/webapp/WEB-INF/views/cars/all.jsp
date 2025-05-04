<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<%@include file="../header.jsp"%>
<h1 class="table_dark">All cars:</h1><br />
<table class="table_dark">
    <tr>
        <th>ID</th>
        <th>Model</th>
        <th>Manufacturer name</th>
        <th>Manufacturer country</th>
        <th>Drivers</th>
        <th></th>
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
                    ${driver.id} ${driver.name} ${driver.licenseNumber} ${driver.login}<br>
                </c:forEach>
            </td>
            <td>
                <c:if test="${all_cars != null}">
                    <a href="${pageContext.request.contextPath}/cars/drivers/delete?id=${car.id}">
                        <input type="button" value="DELETE">
                    </a>
                </c:if>
                <c:if test="${all_cars == null}">
                    <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                        <input type="button" value="DELETE">
                    </a>
                </c:if>
            </td>
        </tr>
    </c:forEach>
    <c:if test="${all_cars != null}">
        <%@include file="addCarFromDriver.jsp"%>
    </c:if>
</table>
</body>
</html>
