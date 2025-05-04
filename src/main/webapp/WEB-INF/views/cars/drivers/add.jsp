<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Add driver to car</title>
    <%@include file='/WEB-INF/views/siteComponents/header.jsp' %>
</head>
<body>
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
            <select name="car_id" form="car" required>
                <c:forEach items="${cars}" var="car">
                    <option value=<c:out value="${car.id}"/>><c:out value="${car.id}: ${car.manufacturer.name} ${car.model}"/></option>
                </c:forEach>
            </select>
        </td>
        <td>
            <select name="driver_id" form="car" required>
                <c:forEach items="${drivers}" var="driver">
                    <option value=<c:out value="${driver.id}"/>><c:out value="${driver.id}: ${driver.name}"/></option>
                </c:forEach>
            </select>
        </td>
        <td>
            <input type="submit" name="add" form="car">
        </td>
    </tr>
</table>
</body>
</html>
