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
<form method="post" id="car" action="${pageContext.request.contextPath}/cars/drivers/add"></form>
<h1 class="table_dark">Add driver to car:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>Car</th>
        <th>Driver</th>
        <th>Add</th>
    </tr>
    <tr>
        <td>
            Car <select name="car_id">
            <c:forEach items="${cars}" var="car">
                <option value="${car.id}"> ${car.model} </option>
            </c:forEach>
        </select><br/>
        </td>
        <td>
            Driver <select name="driver_id">
            <c:forEach items="${drivers}" var="driver">
                <option value="${driver.id}"> ${driver.name} </option>
            </c:forEach>
        </select><br/>
        </td>
        <td>
            <input type="submit" name="add" form="car">
        </td>
    </tr>
</table>
</body>
</html>
