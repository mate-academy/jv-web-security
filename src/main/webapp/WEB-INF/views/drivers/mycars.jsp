<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
  <title>My cars</title>
</head>
<body>
<h1 class="table_dark">My cars</h1>
<table border="1" class="table_dark">
  <tr>
    <th>ID</th>
    <th>Model</th>
    <th>Manufacturer name</th>
    <th>Manufacturer country</th>
  </tr>
  <c:forEach var="driver" items="${cars}">
    <tr>
      <td>
        <c:out value="${driver.id}"/>
      </td>
      <td>
        <c:out value="${driver.model}"/>
      </td>
      <td>
        <c:out value="${driver.manufacturer.name}"/>
      </td>
      <td>
        <c:out value="${driver.manufacturer.country}"/>
      </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
