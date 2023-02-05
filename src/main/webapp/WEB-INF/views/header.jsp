<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
  <title>Header</title>
</head>
<body>
<form method="post" id="header"></form>
<table class="table_dark" id="header_table">
  <tr>
    <td><a href="${pageContext.request.contextPath}/drivers">Display All Drivers</a></td>
    <td><a href="${pageContext.request.contextPath}/cars">Display All Cars</a></td>
    <td><a href="${pageContext.request.contextPath}/manufacturers">Display All Manufacturers</a></td>
    <td><a href="${pageContext.request.contextPath}/drivers/add">Create new Driver</a></td>
    <td><a href="${pageContext.request.contextPath}/cars/add">Create new Car</a></td>
    <td><a href="${pageContext.request.contextPath}/manufacturers/add">Create new Manufacturer</a></td>
    <td><a href="${pageContext.request.contextPath}/cars/drivers/add">Add Driver to Car</a></td>
    <td>
      <p class="driver_name">${sessionScope.driver_name}</p>
      <a class="logout" href="${pageContext.request.contextPath}/login">LOGOUT</a>
    </td>
  </tr>
</table>
</body>
</html>
