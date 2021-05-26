<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Redirect page</title>
</head>
<body>
<%@include file="header.jsp"%>
<form method="post" id="redirect"></form>
<h1 class="table_dark">Hello, driver</h1>
<table class="table_dark">
    <tr>
        <th>Redirect to</th>
    </tr>
    <tr><td><a href="${pageContext.request.contextPath}/login">Login</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/">Display All Drivers</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/">Display All Cars</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers/">Display All Manufacturers</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/register">Register new Driver</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/add">Register new Car</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers/add">Register new Manufacturer</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/drivers/add">Add Driver to Car</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/current">All cars by current driver</a></td></tr>
</table>
</body>
</html>
