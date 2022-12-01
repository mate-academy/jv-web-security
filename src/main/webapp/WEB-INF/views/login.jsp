<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
  <title>Login page</title>
</head>
<body>
<h3 style="color: red">${errorMsg}</h3>
<form method="post" id="driver" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Login page:</h1>
<table border="1" class="table_dark">
  <tr>
    <th>Please enter your Login</th>
    <th>Please enter your Password</th>
    <th>Login</th>
  </tr>
  <tr>
    <td>
      <input type="text" name="login" form="driver" required>
    </td>
    <td>
      <input type="password" name="password" form="driver" required>
    </td>
    <td>
      <input type="submit" name="add" form="driver">
    </td>
  </tr>
</table>
<h3> <a href="${pageContext.request.contextPath}/drivers/add"> Register</a></h3>
</body>
</html>
