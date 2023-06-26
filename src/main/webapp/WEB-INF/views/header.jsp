<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    <%@include file='/WEB-INF/views/css/header.css' %>
</style>
<head>
    <title>Title</title>
</head>
<body>
<table class="header">
    <tr>
        <th><a href="${pageContext.request.contextPath}/drivers">Display All Drivers</a></th>
        <th><a href="${pageContext.request.contextPath}/cars">Display All Cars</a></th>
        <th><a href="${pageContext.request.contextPath}/manufacturers">Display All Manufacturers</a></th>
        <th><a href="${pageContext.request.contextPath}/drivers/add">Create new Driver</a></th>
        <th><a href="${pageContext.request.contextPath}/cars/add">Create new Car</a></th>
        <th><a href="${pageContext.request.contextPath}/manufacturers/add">Create new Manufacturer</a></th>
        <th><a href="${pageContext.request.contextPath}/cars/drivers/add">Add Driver to Car</a></th>
        <th><a href="${pageContext.request.contextPath}/drivers/cars">My cars</a></th>
        <th><a href="${pageContext.request.contextPath}/logout">Logout</a></th>
    </tr>
</table>
</body>
</html>
