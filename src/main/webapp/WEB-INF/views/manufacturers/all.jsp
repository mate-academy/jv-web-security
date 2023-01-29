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
    <h1 class="steelBlueCols">All manufacturers</h1>
<thead>
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Country</th>
    <th>Delete</th>
</tr>
</thead>
<tbody>
<c:forEach var="manufacturer" items="${manufacturers}">
    <tr>
        <td>
            <c:out value="${manufacturer.id}"/>
        </td>
        <td>
            <c:out value="${manufacturer.name}"/>
        </td>
        <td>
            <c:out value="${manufacturer.country}"/>
        </td>
        <td>
            <a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">DELETE</a>
        </td>
    </tr>
</c:forEach>
</tbody>
</table>
</body>
</html>
