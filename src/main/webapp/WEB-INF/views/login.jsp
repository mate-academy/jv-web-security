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
<form method="post" id="authentication" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Enter your login and password:</h1>
<table border="1" class="table_dark">
  <tr>
    <th>Login</th>
    <th>Password</th>
    <th>Enter</th>
  </tr>
  <tr>
    <td>
      <input type="text" name="login" form="authentication" required>
    </td>
    <td>
      <input type="password" name="password" form="authentication" required>
    </td>
    <td>
      <input type="submit" name="Enter" form="authentication">
    </td>
  </tr>
</table>
<h4 style="color: red">${errorMsg}</h4>
<a href="${pageContext.request.contextPath}/drivers/add">Register</a>
</body>
</html>
