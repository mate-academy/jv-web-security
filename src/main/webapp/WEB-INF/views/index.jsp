<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>My team</title>
</head>
<body>
<%@include file="/WEB-INF/views/header.jsp"%>
<form method="post" id="redirect"></form>
<h1 class="table_dark">Taxi Service</h1>
<table class="table_dark">
    <tr>
        <th>Redirect to</th>
    </tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers">Display All Drivers</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars">Display All Cars</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers">Display All Manufacturers</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/add">Add a new Driver</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/add">Add a new Car</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers/add">Add a new Manufacturer</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/drivers/add">Add a Driver to a Car</a></td></tr>
</table>
</body>
</html>
