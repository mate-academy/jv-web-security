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
<h3><a href="${pageContext.request.contextPath}/index">Back to main menu</a></h3>
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

<table cellspacing="0" cellpadding="5" border="4" align="right">
    <caption>All drivers</caption>
    <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>LICENSE NUMBER</th>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <th><c:out value="${driver.id}"/></th>
            <th><c:out value="${driver.name}"/></th>
            <th><c:out value="${driver.licenseNumber}"/></th>
        </tr>
    </c:forEach>
</table>


<table cellspacing="0" cellpadding="5" border="4" align="left">
    <caption>All cars</caption>
    <tr>
        <th>ID</th>
        <th>MODEL</th>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <th><c:out value="${car.id}"/></th>
            <th><c:out value="${car.model}"/></th>
        </tr>
    </c:forEach>
</table>
</body>
</html>
