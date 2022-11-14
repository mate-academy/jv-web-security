<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h4 style="color:red;">${message}</h4>
<form method="post" id="login" action="${pageContext.request.contextPath}/login"></form>
<table border="1" class="table_dark">
  <tr>
    <td>Enter login</td>
    <td>Enter password</td>
  </tr>
  <tr>
    <td>
      <input type="text" name="login" form="login" required>
    </td>
    <td>
      <input type="password" name="password" form="login" required>
    </td>
  </tr>
  <tr >
    <td>
      <input type="submit" name="add" form="login">
    </td>
  </tr>
</table>
</body>
</html>
