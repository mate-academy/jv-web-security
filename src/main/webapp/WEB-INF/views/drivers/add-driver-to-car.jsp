<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create driver</title>
  <style>
    <%@include file='/WEB-INF/views/css/bootstrap.min.css' %>
    <%@include file='/WEB-INF/views/css/style.css' %>
  </style>
</head>
<body>
<p><b>Add driver to car:</b></p>
<form method="POST" action="${pageContext.request.contextPath}/cars/drivers/add">
  <div class="mb-3">
    <label for="carId" class="form-label">Car id</label>
    <input class="form-control" type="text" value="${car.id}" id="carId" disabled>
    <input type="hidden" value="${car.id}" name="carId">
  </div>
  <div class="mb-3">
    <label for="carModel" class="form-label">Car model</label>
    <input class="form-control" type="text" value="${car.model}" id="carModel" disabled>
  </div>
  <div class="mb-3">
    <label for="carManufacturer" class="form-label">Car manufacturer</label>
    <input class="form-control" type="text" value="${car.manufacturer.name} - ${car.manufacturer.country}" id="carManufacturer" disabled>
  </div>
  <div class="mb-3">
    <table class="table table-striped" id="carDrivers" aria-disabled="true">
      <thead>
        <tr aria-colspan="2"><label for="carDrivers" class="form-label">Car drivers</label></tr>
        <tr>
          <th>Name driver</th>
          <th>License number</th>
        </tr>
      </thead>
        <c:forEach items="${car.drivers}" var="driver">
        <tr>
          <td><c:out value="${driver.name}"/></td>
          <td><c:out value="${driver.licenseNumber}"/></td>
        </tr>
        </c:forEach>
    </table>
  </div>
  <div class="mb-3">
    <label for="driverId" class="form-label">Free driver</label>
    <select requred class="form-select form-select-lg mb-3" aria-label=".form-select-lg example" id="driverId" name="driverId">
      <c:forEach items="${drivers}" var="driver">
        <option value="${driver.id}">${driver.name} - ${driver.licenseNumber}</option>
      </c:forEach>
    </select>
  </div>
  <button type="submit" class="btn btn-primary">Add driver to car</button>
  <a class="btn btn-dark" href="${pageContext.request.contextPath}/cars">Cancel</a>
</form>
</body>
</html>
