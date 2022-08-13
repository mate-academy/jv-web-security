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
<%@include file="/WEB-INF/views/header.jsp"%>
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
            <input type="submit" name="add" form="car">
        </td>
    </tr>
</table>
</body>
<body>
<h1 class="table_dark">List of drivers:</h1>
<table border="1" class="table_dark">
    <tr>
        <td>ID</td>
        <td>NAME</td>
        <td>LICENCE NUMBER</td>
    </tr>

    <jsp:useBean id="alldrivers" scope="request" type="java.util.List"/>
    <c:forEach items="${alldrivers}" var="driver">
        <tr>
            <td><c:out value="${driver.getId()}" /></td>
            <td><c:out value="${driver.getName()}" /></td>
            <td><c:out value="${driver.getLicenseNumber()}" /></td>
        </tr>
    </c:forEach>
</table>
</body>
<body>
<h1 class="table_dark">List of cars:</h1>
<table border="1" class="table_dark">
    <tr>
        <td>ID</td>
        <td>MODEL</td>
        <td>MANUFACTURER</td>
    </tr>
    <jsp:useBean id="allcars" scope="request" type="java.util.List"/>
    <c:forEach items="${allcars}" var="car">
        <tr>
            <td><c:out value="${car.getId()}" /></td>
            <td><c:out value="${car.getModel()}" /></td>
            <td><c:out value="${car.getManufacturer().getName()}" /></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
