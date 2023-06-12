<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display all drivers</title>
    <style>
        <%@include file="/WEB-INF/css/table.css" %>
        <%@include file="/WEB-INF/css/header.css" %>
    </style>
    <%@include file="/WEB-INF/views/header.jsp" %></head>
<body>

<table class="tg">
    <thead>
    <tr>
        <th class="tg-4n5g">ID</th>
        <th class="tg-4n5g">Model</th>
        <th class="tg-4n5g">Manufacturer name</th>
        <th class="tg-4n5g">Manufacturer country</th>
        <th class="tg-4n5g">Drivers</th>
        <th class="tg-4n5g">Delete</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="car" items="${cars}">
        <tr>
            <td class="tg-0lax">
                <c:out value="${car.id}"/>
            </td>
            <td class="tg-0lax">
                <c:out value="${car.model}"/>
            </td>
            <td class="tg-0lax">
                <c:out value="${car.manufacturer.name}"/>
            </td>
            <td class="tg-0lax">
                <c:out value="${car.manufacturer.country}"/>
            </td>
            <td class="tg-0lax">
                <c:forEach var="driver" items="${car.drivers}">
                    ${driver.id} ${driver.name} ${driver.licenseNumber} <br>
                </c:forEach>
            </td>
            <td class="tg-0lax">
                <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">DELETE</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>