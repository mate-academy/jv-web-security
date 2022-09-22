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
    <c:forEach var="login" items="${cars}">
        <tr>
            <td>
                <c:out value="${login.id}"/>
            </td>
            <td>
                <c:out value="${login.model}"/>
            </td>
            <td>
                <c:out value="${login.manufacturer.name}"/>
            </td>
            <td>
                <c:out value="${login.manufacturer.country}"/>
            </td>
            <td>
                <c:forEach var="driver" items="${login.drivers}">
                    ${driver.id} ${driver.name} ${driver.licenseNumber} <br>
                </c:forEach>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/cars/delete?id=${login.id}">DELETE</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
