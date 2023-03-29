<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Footer</title>
</head>
<body>
<form method="post" id="redirect"></form>
<table class="table_footer">
  <tr>
    <th><a href="${pageContext.request.contextPath}/index">Home</a></th>
    <th><a href="${pageContext.request.contextPath}/drivers">Drivers</a></th>
    <th><a href="${pageContext.request.contextPath}/cars">Cars</a></th>
    <th><a href="${pageContext.request.contextPath}/manufacturers">Manufacturers</a></th>
  </tr>
  <tr>
    <td></td>
    <td><a href="${pageContext.request.contextPath}/drivers/add">Add Driver</a></td>
    <td><a href="${pageContext.request.contextPath}/cars/add">Add Car</a></td>
    <td><a href="${pageContext.request.contextPath}/manufacturers/add">Add Manufacturer</a></td>
  </tr>
  <tr>
    <td></td>
    <td><a href="${pageContext.request.contextPath}/cars/drivers/add">Driver to Car</a></td>>
    <td><a href="${pageContext.request.contextPath}/cars/current_driver_id">All Cars For Me</a></td>
    <td></td>
  </tr>
</table>
</body>
</html>
