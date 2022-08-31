<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
  <title>All users</title>
</head>
<body>
<h1 class="table_dark">All users:</h1>
<table border="1" class="table_dark">
  <tr>
    <th>ID</th>
    <th>Login</th>
    <th>Driver ID</th>
    <th>Name</th>
    <th>License number</th>
  </tr>
  <c:forEach var="user" items="${users}">
    <tr>
      <td>
        <c:out value="${user.id}"/>
      </td>
      <td>
        <c:out value="${user.login}"/>
      </td>
      <td>
        <c:out value="${user.driver.id}"/>
      </td>
      <td>
        <c:out value="${user.driver.name}"/>
      </td>
      <td>
        <c:out value="${user.driver.licenseNumber}"/>
      </td>
    </tr>
  </c:forEach>
</table>
</body>
</html>
