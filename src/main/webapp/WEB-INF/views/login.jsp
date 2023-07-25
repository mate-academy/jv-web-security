<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Login page</title>
</head>
<body>
<h4 style="color: red">${errorMsg}</h4>
<form method="post" id="login_form" action="${pageContext.request.contextPath}/login"></form>
<table class="table_dark">
  <tr>
    <th><label for="driver_id">Login</label></th>
    <th><label for="password">Password</label></th>
    <th></th>
  </tr>
  <tr>
    <td>
      <input type="text" name="login" id="driver_id" form="login_form" required>
    </td>
    <td>
      <input type="password" name="password" id="password" form="login_form" required>
    </td>
    <td>
      <input type="submit" name="add" form="login_form" value="login">
    </td>
  </tr>
</table>
<h4><a href="${pageContext.request.contextPath}/drivers/add">Register new driver</a></h4>
</body>
</html>
