<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Your cars</title>
    <%@include file='/WEB-INF/views/header.jsp' %>
</head>
<body>
<h1 class="table_dark">All cars:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>ID</th>
        <th>Model</th>
        <th>Manufacturer name</th>
        <th>Manufacturer country</th>
    </tr>
    <c:forEach var="allMyCars" items="${allMyCars}">
    <tr>
        <td>
            <c:out value="${allMyCars.id}"/>
        </td>
        <td>
            <c:out value="${allMyCars.model}"/>
        </td>
        <td>
            <c:out value="${allMyCars.manufacturer.name}"/>
        </td>
        <td>
            <c:out value="${allMyCars.manufacturer.country}"/>
        </td>
    </tr>
    </c:forEach>
</table>
</body>
</html>
