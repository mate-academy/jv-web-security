<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/body_center.css' %>
</style>
<html>
<head>
    <title>ATMS-cars</title>
</head>
<body class="body_center">
<%@ include file="/WEB-INF/views/commons/buttonHeader.jsp"%><br>
<h3>To add new car please fill the form: </h3><br>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    Car model <input type="text" name="model" required><br>
    Manufacturer <select name="manufacturer_id">
        <c:forEach items="${manufacturers}" var="manufacturer">
            <option value="${manufacturer.id}">
                <c:out value="${manufacturer.id}" />.
                <c:out value="${manufacturer.name}" />
            </option>
            </c:forEach>
    </select><br>
    <button type="submit">Add car</button>
</form><br>
<h3>List of cars</h3>
<table>
    <tr>
        <td>ID</td>
        <td>Model</td>
        <td>Manufacturer</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td><c:out value="${car.id}" /></td>
            <td><c:out value="${car.model}" /></td>
            <td><c:out value="${car.manufacturer.name}" /></td>
            <td><a href="${pageContext.request.contextPath}/cars/drivers/add?car_id=${car.id}">
                <input type="button" value="Assign drivers" />
            </a></td>
            <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">
                <input type="button" value="DELETE"></a></td>
        </tr>
    </c:forEach>
</table><br>
</body>
</html>
