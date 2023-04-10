<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<style>
    <%@include file='/WEB-INF/views/css/body_center.css' %>
</style>
<html>
<head>
    <title>ATMS-cars</title>
</head>
<body class="body_center">
<%@ include file="/WEB-INF/views/commons/buttonHeader.jsp"%><br>
<h3>To add new car please fill the form: </h3>
<table><tr>
<form method="post" action="${pageContext.request.contextPath}/cars/create">
    <td class="value_px">Car model <input type="text" name="model" required></td>
    <td class="value_px">Manufacturer <select name="manufacturer_id">
        <c:forEach items="${manufacturers}" var="manufacturer">
            <option value="${manufacturer.id}">
                <c:out value="${manufacturer.id}" />.
                <c:out value="${manufacturer.name}" />
            </option>
            </c:forEach>
    </select></td>
    <td class="value_px"><br><button type="submit">Add car</button></td>
</form></tr></table><br>
<h3>List of cars</h3>
<table>
    <tr>
        <td class="id_px">ID</td>
        <td class="value_px">Model</td>
        <td class="value_px">Manufacturer</td>
    </tr>
    <c:forEach items="${cars}" var="car">
        <tr>
            <td class="id_px"><c:out value="${car.id}" /></td>
            <td class="value_px"><c:out value="${car.model}" /></td>
            <td class="value_px"><c:out value="${car.manufacturer.name}" /></td>
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
