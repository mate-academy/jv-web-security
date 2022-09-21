<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
    <%@include file='/WEB-INF/views/css/header_style.css' %>
</style>
<html>
<head>
    <title>Cab Service</title>
</head>
<body>
<%@include file="authenticated_header.jsp" %>
<form method="post" id="redirect"></form>
<h1 class="table_dark">Welcome to our cab service!</h1>
<table class="table_dark">
    <tr>
        <th>Redirect to</th>
    </tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers">Display All Drivers</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars">Display All Cars</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers">Display All Manufacturers</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/cars">Display All My Current Cars</a></td></tr>

    <tr></tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/add">Create new Driver</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/add">Create new Car</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers/add">Create new Manufacturer</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/drivers/add">Add Driver to Car</a></td></tr>
</table>
</body>
</html>
