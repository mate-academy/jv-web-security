<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
  <title>Login</title>
</head>
<body>
<h4 style="color: red">${errorMsg}</h4>
<h1>Please fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/login">
  Login: <input type="text" name="login"><br>
  Password: <input type="password" name="password"><br>
  <button type="submit">Login</button>
</form>
<tr>
  <td>Register (add new driver)</td>
  <td><a href="${pageContext.request.contextPath}/drivers/add">link</a></td>
</tr>
</body>
</html>
