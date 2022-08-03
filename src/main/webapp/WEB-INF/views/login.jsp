<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form method="post" id="driver" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Login:</h1>
<h6 class="table_dark" style="color: red">${errorMessage}</h6>
<table border="1" class="table_dark">
  <tr>
    <th>Login</th>
    <th>Password</th>
    <th> </th>
  </tr>
  <tr>
    <td>
      <input type="text" name="login" form="driver" required>
    </td>
    <td>
      <input type="password" name="password" form="driver" required>
    </td>
    <td>
      <input type="submit" form="driver">
    </td>
  </tr>
</table>
<p class="register_link">
  <a href="${pageContext.request.contextPath}/drivers/add">Create new driver</a>
</p>
</body>
</html>
