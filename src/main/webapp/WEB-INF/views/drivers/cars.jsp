<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file='/WEB-INF/views/css/table_dark.css' %>
  .header {
    background-color: #7C5FAB;
    color: #FFF;
    padding: 20px;
    text-align: center;
    font-size: 24px;
  }
</style>
<html>
<head>
  <title>All cars</title>
</head>
<body>
<div class="header">
  <h1>My cars:</h1>
</div>
<table border="1" class="table_dark">
  <tr>
    <th>ID</th>
    <th>Model</th>
    <th>Manufacturer name</th>
    <th>Manufacturer country</th>
    <th>Drivers</th>
    <th>Delete</th>
  </tr>
  <c:forEach var="car" items="${cars}">
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
          ${driver.id} ${driver.name} ${driver.licenseNumber} ${driver.login} <br>
        </c:forEach>
      </td>
    </tr>
  </c:forEach>
</table>
<%@include file='/WEB-INF/views/header.jsp'%>
</body>
</html>