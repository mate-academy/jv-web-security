<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Link driver to car</title>
    <style>
        <%@include file="/WEB-INF/css/inputForm.css" %>
        <%@include file="/WEB-INF/css/header.css" %>
    </style>
    <%@include file="/WEB-INF/views/header.jsp" %>
</head>
<body>
<h1>Link driver to car</h1>
<form action="${pageContext.request.contextPath}/cars/drivers/add" method="post">
    <label for="carId">Car:</label>
    <select name="carId" id="carId">
        <option value="">-- Select --</option>
        <c:forEach items="${cars}" var="car">
            <option value="${car.id}">${car.model} (${car.manufacturer.name})</option>
        </c:forEach>
    </select>
    <label for="driverId">Driver:</label>
    <select name="driverId" id="driverId">
        <option value="">-- Select --</option>
        <c:forEach items="${drivers}" var="driver">
            <option value="${driver.id}">${driver.name} (${driver.licenseNumber})</option>
        </c:forEach>
    </select>
    <br>
    <input type="submit" value="Link">
</form>
</body>
</html>
