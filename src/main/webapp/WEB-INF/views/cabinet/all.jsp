<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
  <title>UCP</title>
</head>
<body>
<%@ include file="/WEB-INF/views/commons/header.jsp"%><br>
<form method="post" id="car" action="${pageContext.request.contextPath}/cars/drivers/add"></form>
<h1 class="table_dark">Current driver:</h1>
<table border="1" class="table_dark">
  <tr>
    <th>Name</th>
    <th>License number</th>
    <th>Username</th>
  </tr>
  <tr>
    <td>
      <c:out value="${driver.name}"/>
    </td>
    <td>
      <c:out value="${driver.licenseNumber}"/>
    </td>
    <td>
      <c:out value="${driver.username}"/>
    </td>
  </tr>
</table>
<br><br>
<h1 class="table_dark">My cars:</h1>
<table border="1" class="table_dark">
  <tr>
    <th>ID</th>
    <th>Model</th>
    <th>Manufacturer name</th>
    <th>Manufacturer country</th>
    <th>Drivers</th>
    <th>Delete</th>
  </tr>
  <c:forEach var="car" items="${driverCars}">
    <tr>
      <td>
        <c:out value="${car.id}"/>
      </td>
      <td>
        <c:out value="${car.model}"/>
      </td>
      <td>
        <c:out value="${car.manufacturer.name}"/>
      </td>
      <td>
        <c:out value="${car.manufacturer.country}"/>
      </td>
      <td>
        <c:forEach var="driver" items="${car.drivers}">
          ${driver.id} ${driver.name} ${driver.licenseNumber} <br>
        </c:forEach>
      </td>
      <td>
        <a href="${pageContext.request.contextPath}/cars/remove?id=${car.id}">DELETE</a>
      </td>
    </tr>
  </c:forEach>
</table>
<br><br>
<h1 class="table_dark">Add car:</h1>
<table border="1" class="table_dark">
  <tr>
    <th>Driver ID</th>
    <th>Car ID</th>
    <th>Add</th>
  </tr>
  <tr>
    <td>
      <c:out value="${driver.id}"/>
      <c:out value="${driver.username}"/>
    </td>
    <td>
      <select name="car_id" form="car" required>
        <c:forEach items="${cars}" var="car">
          <option value="${car.id}">
            <c:out value="${car.id}"/>
            <c:out value="${car.model}"/>
          </option>
        </c:forEach>
      </select>
    </td>
    <td>
      <input type="hidden" name="driver_id" value="${driver.id}" form="car" required>
      <input type="submit" name="add" form="car" required>
    </td>
  </tr>
</table>
</body>
</html>
