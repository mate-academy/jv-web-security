<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
    .header {
        background-color: #7C5FAB;
        color: #FFF;
        padding: 20px;
        text-align: center;
        font-size: 24px;
    }
</style>
<html>
<head>
    <title>All manufacturers</title>
</head>
<body>
<div class="header">
    <h1>All manufacturers:</h1>
</div>
<table border="1" class="table_dark">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>License number</th>
        <th>Delete</th>
    </tr>
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
</table>
<%@include file='/WEB-INF/views/header.jsp'%>
</body>
</html>
