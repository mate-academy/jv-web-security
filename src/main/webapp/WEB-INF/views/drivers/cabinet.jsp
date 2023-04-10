<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<style>
    <%@include file='/WEB-INF/views/css/body_center.css' %>
</style>
<html>
<head>
    <title>ATMS-Cabinet</title>
</head>
<body class="body_center">
<%@ include file="/WEB-INF/views/commons/buttonHeader.jsp"%><br>
<h3>Your information</h3>
<h4 style="color: darkgreen">Please provide full information before binding a car</h4>
<table>
    <tr>
        <td class="value_px">Name</td>
        <td class="value_px">License Number</td>
        <td class="value_px">Login</td>
    </tr>
    <tr>
        <td class="value_px"><c:out value="${driver.name}" /></td>
        <td class="value_px"><c:out value="${driver.licenseNumber}" /></td>
        <td class="value_px"><c:out value="${driver.login}" /></td>
    </tr>
    <tr>
        <form method="post" action="${pageContext.request.contextPath}/driver/update">
            <td><input type="text" name="name" required></td>
            <td><input type="text" name="license_number" required></td>
            <td><button type="submit">Update me</button></td>
        </form>
    </tr>
</table><br>
<h3>List of assigned cars</h3>
<table>
    <tr>
        <td class="id_px">ID</td>
        <td class="value_px">Model</td>
        <td class="value_px">Manufacturer</td>
    </tr>
    <c:forEach items="${driver_cars}" var="car">
        <tr>
            <td class="id_px"><c:out value="${car.id}" /></td>
            <td class="value_px"><c:out value="${car.model}" /></td>
            <td class="value_px"><c:out value="${car.manufacturer.name}" /></td>
            <td><a href="${pageContext.request.contextPath}/cars/drivers/delete?car_id=${car.id}&driver_id=${driver.id}">
                <input type="button" value="UNBIND"></a></td>
        </tr>
    </c:forEach>
</table><br>
<h3>Choose another car to assign</h3>
<form method="post" action="${pageContext.request.contextPath}/cars/drivers/add?driver_id=${driver.id}">
    Car <select name="car_id">
    <c:forEach items="${all_cars}" var="car">
        <option value="${car.id}">
            <c:out value="${car.id}" />.
            <c:out value="${car.model}" /> -
            <c:out value="${car.manufacturer.name}" />
        </option>
    </c:forEach>
</select><br>
    <input type="hidden" value="${driver.id}" name="driver_id" />
    <button type="submit">Add car</button>
</form>
</body>
</html>
