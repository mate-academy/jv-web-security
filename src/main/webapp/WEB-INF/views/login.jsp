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
<h1 class="table_dark">Login Page</h1>
<table border="1" class="table_dark">
  <tr>
    <th>Please enter your email</th>
    <th>Please enter your password</th>
    <th>Login</th>
  </tr>
  <tr>
    <td>
      <input type="text" name="email" form="login" required>
    </td>
    <td>
      <input type="password" name="password" form="login" required>
    </td>
    <td>
      <input type="submit" name="enter" form="login" required>
    </td>
  </tr>
</table>
<table class="table_dark">
  <tr>
    <th><a href="${pageContext.request.contextPath}/drivers/add">Register</a></th>
  </tr>
</table>
<h1 class="table_dark" style="color:red">${errorMessage}</h1>
</body>
</html>
