<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file='/WEB-INF/views/css/all.css' %>
</style>
<jsp:include page="/WEB-INF/views/index.jsp"/>
<html>
<head>
  <title>Display all drivers</title>
</head>
<body>
<div class="container">
<table>
  <thead>
  <tr>
    <th>ID</th>
    <th>NAME</th>
    <th>DRIVER LICENSE</th>
    <th></th>
  </tr>
  </thead>
  <tbody>
  <c:forEach items="${drivers}" var="driver">
    <tr>
      <td><c:out value="${driver.id}"/></td>
      <td><c:out value="${driver.name}"/></td>
      <td><c:out value="${driver.licenseNumber}"/></td>
      <td>
        <form action="${pageContext.request.contextPath}/cars/drivers/add" method="POST">
          <input type="hidden" name="driver_id" value="${driver.id}" />
          <input type="hidden" name="car_id" value="${car_id}" />
          <button style="background-color: green" type="submit">Add</button>
        </form>
      </td>
    </tr>
  </c:forEach>
  </tbody>
</table>
</div>
</body>
</html>
