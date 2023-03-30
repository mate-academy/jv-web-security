<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
  <title>Create</title>
</head>
<body>
<form method="post" id="driver" action="${pageContext.request.contextPath}/drivers/create">
<h1 class="table_dark" style="color:red">${error_msg}</h1>
<h1 class="table_dark">Create account</h1>
<table border="1" class="table_dark">
  <tr>
    <th>Name</th>
    <th>License number</th>
    <th>Login</th>
    <th>Password</th>
  </tr>
  <tr>
    <td>
      <input type="text" name="name" form="driver" required>
    </td>
    <td>
      <input type="text" name="license_number" form="driver" required>
    </td>
    <td>
      <input type="text" name="login" form="driver" required>
    </td>
    <td>
      <input type="text" name="password" form="driver" required>
    </td>
  </tr>
  <tr>
    <td>
      <input type="button" value="Return" onclick="history.back()">
    </td>
    <td></td>
    <td></td>
    <td>
      <input type="submit" value="Save">
    </td>
  </tr>
</table>
</form>
</body>
</html>
