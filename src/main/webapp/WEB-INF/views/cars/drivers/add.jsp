<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<%@include file='/WEB-INF/views/header.jsp' %><br>
<form method="post" id="car" action="${pageContext.request.contextPath}/cars/drivers/add"></form>
<h1 class="table_dark">Add driver to car:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Car ID</th>
        <th>Driver ID</th>
        <th>Add</th>
    </tr>
    <tr>
        <td>
            <input type="number" name="car_id" form="car" required>
        </td>
        <td>
            <input type="number" name="driver_id" form="car" required>
        </td>
        <td>
            <button type="submit" name="add" form="car">Confirm</button>
        </td>
    </tr>
</table>
<br><br><br><br>
<table class="table_dark">
    <tr>
        <th>Redirect to</th>
    </tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/all">Display All Cars</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/all">Display All Drivers</a></td></tr>
    <tr><td><%@include file='/WEB-INF/views/footer.jsp' %></td></tr>
</table>
</body>
</html>
