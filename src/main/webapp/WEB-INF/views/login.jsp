<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
  <title>My team</title>
</head>
<body>
<form method="post" id="redirect"></form>
<h1 class="table_dark">Enter login and password</h1>
<table border="1" class="table_dark">
  <tr>
    <th>User name</th>
    <th>Password</th>
    <th>Login</th>
  </tr>
  <tr>
    <td>
      <input type="text" name="user_name" form="redirect" required>
    </td>
    <td>
      <input type="password" name="password" form="redirect" required>
    </td>
    <td>
      <input type="submit" name="login" form="redirect">
    </td>
  </tr>
</table>
<
</body>
</html>
