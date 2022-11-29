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
<h4 style="color:#9e0404">${errorMessage}</h4>
<form method="post" id="login" action="${pageContext.request.contextPath}/drivers/login"></form>
<h1 class="table_dark">Login please:</h1>
<table border="1" class="table_dark">
  <tr>
    <th>Login</th>
    <th>Password</th>
    <th>Submit</th>
    <th>Register</th>
  </tr>
  <tr>
    <td>
      <input type="text" name="login" form="login" required>
    </td>
    <td>
      <input type="password" name="password" form="login" required>
    </td>
    <td>
      <input type="submit" name="submit" form="login">
    </td>
    <td>
      <button>
      <a href="${pageContext.request.contextPath}/drivers/register">Register</a>
      </button>
    </td>
  </tr>
</table>
</body>
</html>
