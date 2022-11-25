<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>My team</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/logout">Logout</a>
<form method="post" id="redirect"></form>
<h1 class="table_dark">Hello, mates</h1>
<table class="table_dark">
    <tr>
        <th>Redirect to</th>
    </tr>
    <c:if test="${is_admin}">
        <tr><td><a href="${pageContext.request.contextPath}/drivers">Display All Drivers</a></td></tr>
        <tr><td><a href="${pageContext.request.contextPath}/cars">Display All Cars</a></td></tr>
        <tr><td><a href="${pageContext.request.contextPath}/manufacturers">Display All Manufacturers</a></td></tr>
        <tr><td><a href="${pageContext.request.contextPath}/drivers/add">Create new Driver</a></td></tr>
        <tr><td><a href="${pageContext.request.contextPath}/cars/add">Create new Car</a></td></tr>
        <tr><td><a href="${pageContext.request.contextPath}/manufacturers/add">Create new Manufacturer</a></td></tr>
        <tr><td><a href="${pageContext.request.contextPath}/cars/drivers/add">Add Driver to Car</a></td></tr>
    </c:if>
    <c:if test="${!is_admin}">
        <tr><td><a href="${pageContext.request.contextPath}/drivers/myCars">Display My Cars</a></td></tr>
        <tr><td><a href="${pageContext.request.contextPath}/drivers/add">Update my data</a></td></tr>
    </c:if>
</table>
</body>
</html>
