<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/style.css' %>
</style>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<%@include file="/WEB-INF/views/header.jsp"%>
<table class="styled-table">
    <caption>
        <h2>All cars</h2>
    </caption>
    <thead>
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
        <td>DRIVERS</td>
        <td>DELETE</td>
    </tr>
    </thead>
    <c:forEach items="${cars}" var="car">
        <tbody>
        <tr>
            <td><c:out value="${car.id}"/></td>
            <td><c:out value="${car.model}"/></td>
            <td><c:out value="${car.manufacturer.name}"/></td>
            <c:if test="${car.drivers.size() == 0}">
                <td>No drivers</td>
            </c:if>
            <c:if test="${car.drivers.size() > 0}">
                <td>
                    <c:forEach items="${car.drivers}" var="driver">
                        <c:out value="${driver.name}" />
                        <a href="${pageContext.request.contextPath}/cars/drivers/delete?driver_id=${driver.id}&car_id=${car.id}">delete</a><br>
                    </c:forEach>
                </td>
            </c:if>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">delete</a></td>
        </tr>
        </tbody>
    </c:forEach>
</table>
</body>
</html>
