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

<form method="post" action="${pageContext.request.contextPath}/login">
<h1 class="table_dark">My taxi service</h1>
<h2 lass="table_dark" style="color:red">${errorMsg}</h2>
<table border="1" class="table_dark">
  <tr>
    <th>Login</th>
  </tr>
  <td>
    <input type="text" name="login" required>
  </td>
  <tr>
    <th>Password</th>
  </tr>
  <td>
    <input type="password" name="password" required>
  </td>
  <tr>
    <td>
      <button type="submit" >Confirm</button>
      <h5><a href="${pageContext.request.contextPath}/drivers/add">Register</a> </h5>
    </td>
  </tr>
  </table>
</form>
</body>
</html>
