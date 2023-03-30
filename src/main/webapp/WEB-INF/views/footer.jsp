<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Footer</title>
  <style>
    .table_footer {
      font-size: 18px;
      margin-left: auto;
      margin-right: auto;
    }
  </style>
</head>
<body>
<form method="post" id="redirect"></form>
<table class="table_footer">
  <tr>
    <td><a href="${pageContext.request.contextPath}/index">Home</a></td>
    <td>&nbsp;|&nbsp;</td>
    <td><a href="${pageContext.request.contextPath}/drivers">Drivers</a></td>
    <td>&nbsp;|&nbsp;</td>
    <td><a href="${pageContext.request.contextPath}/drivers/add">Add Driver</a></td>
    <td>&nbsp;|&nbsp;</td>
    <td><a href="${pageContext.request.contextPath}/cars">Cars</a></td>
    <td>&nbsp;|&nbsp;</td>
    <td><a href="${pageContext.request.contextPath}/cars/add">Add Car</a></td>
    <td>&nbsp;|&nbsp;</td>
    <td><a href="${pageContext.request.contextPath}/cars/drivers/add">Driver to Car</a></td>>
    <td>&nbsp;|&nbsp;</td>
    <td><a href="${pageContext.request.contextPath}/cars/current_driver_id">All Cars For Me</a></td>
    <td>&nbsp;|&nbsp;</td>
    <td><a href="${pageContext.request.contextPath}/manufacturers">Manufacturers</a></td>
    <td>&nbsp;|&nbsp;</td>
    <td><a href="${pageContext.request.contextPath}/manufacturers/add">Add Manufacturer</a></td>
  </tr>
</table>
</body>
</html>
