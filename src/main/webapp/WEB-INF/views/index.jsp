<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Menu</title>
</head>
<body>
<form method="post" id="redirect"></form>
<h1 class="table_dark" style="text-shadow: teal 2px 0 5px;">Menu</h1>
<table class= "table_dark">
    <tbody>
    <tr>
        <th>CARS</th>
        <th>MANUFACTURERS</th>
        <th>DRIVERS</th>
    </tr>
    <tr>
        <td>
            <a href="${pageContext.request.contextPath}/cars">Display All Cars</a>
        </td>
        <td>
            <a href="${pageContext.request.contextPath}/manufacturers">Display All Manufacturers</a>
        </td>
        <td>
            <a href="${pageContext.request.contextPath}/drivers">Display All Drivers</a>
        </td>
    </tr>
    <tr >
        <td>
            <a href="${pageContext.request.contextPath}/cars/add">Create new Car</a>
        </td>
        <td>
            <a href="${pageContext.request.contextPath}/manufacturers/add">Create new Manufacturer</a>
        </td>
        <td>
            <a href="${pageContext.request.contextPath}/drivers/add">Create new Driver</a>
        </td>
    </tr>
    <tr>
        <td>
            <a href="${pageContext.request.contextPath}/cars/drivers/add">Add Driver to Car</a>
        </td>
        <td></td>
        <td>
            <a href="${pageContext.request.contextPath}/drivers/cars">Display my Cars</a>
        </td>
    </tr>
    </tbody>
</table>
</body>
</html>
