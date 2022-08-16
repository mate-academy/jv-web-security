<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Taxi 888</title>
</head>
<body>
<%@include file="header.jsp"%>
<form method="post" id="redirect"></form>
<h1 class="table_dark">Welcome to our taxi service</h1>
<table class="table_dark">
    <tr>
        <th>Redirect to</th>
    </tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers" target="_blank">Display All Drivers</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars" target="_blank">Display All Cars</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers" target="_blank">Display All Manufacturers</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/add" target="_blank">Create new Driver</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/add" target="_blank">Create new Car</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers/add" target="_blank">Create new Manufacturer</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/drivers/add" target="_blank">Add Driver to Car</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/current" target="_blank">My cars list</a></td></tr>
</table>
</body>
</html>
