<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>My cars</title>
  <%@include file='/WEB-INF/views/drivers/header.jsp' %>
</head>
<body>
<h1 class="table_dark">All cars:</h1>
<table border="1" class="table_dark">
  <tr>
    <th>ID</th>
    <th>Model</th>
    <th>Manufacturer name</th>
    <th>Manufacturer country</th>
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
        <a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">DELETE</a>
      </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
