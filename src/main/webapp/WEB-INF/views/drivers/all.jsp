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
<table class="steelBlueCols">
    <h1 class="steelBlueCols">All drivers</h1>
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>License number</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="driver" items="${drivers}">
        <tr>
            <td>
                <c:out value="${driver.id}"/>
            </td>
            <td>
                <c:out value="${driver.name}"/>
            </td>
            <td>
                <c:out value="${driver.licenseNumber}"/>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
