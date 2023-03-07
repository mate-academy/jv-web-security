<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
  <title>Login</title>
</head>
<body>
<form method="post" id="login" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Login</h1>
<table border="1" class="table_dark">
  <tr>
    <th>Login</th>
    <th>Password</th>
    <th>Log in</th>
    <th>Add new driver</th>
  </tr>
  <tr>
    <td>
      <input type="text" name="login" form="login" required>
    </td>
    <td>
      <input type="password" name="password" form="login" required>
    </td>
    <td>
      <input type="submit" name="add" form="login" required>
    </td>
    <td>
      <a href="/drivers/add">Add new driver</a>
    </td>
  </tr>
</table>
<h4 style="color:red">${errorMsg}</h4>
</body>
</html>
