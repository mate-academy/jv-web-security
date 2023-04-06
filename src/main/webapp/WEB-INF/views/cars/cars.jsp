<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cars</title>
</head>
<body>
<%@ include file="/WEB-INF/views/header/buttonHeader.jsp"%><br>
<h1 style="font-size: 24px;font-family: Calibri,serif">List of cars</h1>
<table style="align-content: center">
    <tr>
        <td>ID</td>
        <td>MANUFACTURER</td>
        <td>MODEL</td>
        <td>DRIVERS</td>
    </tr>
    <c:forEach items="${cars}" var = "car">
        <tr>
            <td><c:out value ="${car.id}"/></td>
            <td><c:out value ="${car.manufacturer.name}"/></td>
            <td><c:out value ="${car.model}"/></td>
            <td><c:out value ="${car.getDrivers()}"/></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                <input type="button" value="DELETE"></a></td>
        </tr>
    </c:forEach>
</table>
<h1 style="font-size: 24px;font-family: Calibri,serif">Create car</h1>
<form method="post" action="${pageContext.request.contextPath}/cars/add">
    Manufacturer <select name="manufacturer_id">
    <c:forEach items="${manufacturers}" var="manufacturer">
        <option value="${manufacturer.id}">
            <c:out value="${manufacturer.name}"/>
            -
            <c:out value="${manufacturer.country}"/>
        </option>
    </c:forEach>
</select><br>
    Model <input type="text" name="model">
    <br>
    <button type="submit">Create</button>
</form>
<h1 style="font-size: 24px;font-family: Calibri,serif">Remove driver from car</h1>
<form method="get" action="${pageContext.request.contextPath}/cars/drivers/delete?car_id=
        ${car.id}&driver_id=${driver.id}">
    Car <select name="car_id">
    <c:forEach items="${cars}" var="car">
        <option value="${car.id}">
            <c:out value="${car.id}"/>
            .
            <c:out value="${car.manufacturer.name}"/>
            -
            <c:out value="${car.model}"/>
        </option>
    </c:forEach>
</select><br>
    Driver ID: <input type="text" name="driver_id">
    <br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
