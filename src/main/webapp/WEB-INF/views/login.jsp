<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
  <title>Login</title>
</head>
<body>
<form method="post" id="register" action="${pageContext.request.contextPath}/drivers/add"></form>
<form method="post" id="login" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Authentication</h1>
<table border="1" class="table_dark">
  <tr>
    <th>Login</th>
    <th>Password</th>
    <th><button form="register">Register</button></th>
  </tr>
  <tr>
    <td>
      <input type="text" name="login" form="login" required>
    </td>
    <td>
      <input type="password" name="password" form="login" required>
    </td>
    <td>
      <button type="submit" form="login">Login</button>
    </td>
  </tr>
</table>
<h4 style="color: red; text-align: center;">${errorMessage}</h4>
</body>
</html>
