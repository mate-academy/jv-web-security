<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form method="post" id="log" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Login</h1>
<table <%--        border="1" class="table_dark">--%>
  <tr>
    <th>Login</th>
    <th>Password</th>
    <th>Confirm</th>
  </tr>
  <tr>
    <td>
      <input type="text" name="login" form="log" required>
    </td>
    <td>
      <input type="password" name="password" form="log" required>
    </td>
    <td>
      <input type="submit" name="Confirm" form="log">
    </td>
  </tr>
  <h5><a href="${pageContext.request.contextPath}/login">Register</a> </h5>
</table>
</body>
</html>
