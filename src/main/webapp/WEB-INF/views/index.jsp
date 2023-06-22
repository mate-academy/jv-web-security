<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>My team</title>
</head>
<body>
<%@ include file="header.jsp" %>
<form method="post" id="redirect"></form>
<h1 class="table_dark">Hello, ${driverName}, your ID is ${driverId}</h1>
<table class="table_dark">
    <tr>
        <th>Redirect to</th>
    </tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers">Display all drivers</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars">Display all cars</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/cars">Display all cars by driver</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers">Display all manufacturers</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/add">Create new car</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers/add">Create new manufacturer</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/drivers/add">Add driver to car</a></td></tr>
</table>
</body>
</html>
