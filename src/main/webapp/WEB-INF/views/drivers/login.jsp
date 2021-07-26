<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<style>
  <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
  <title>Login</title>
</head>
<body>
<form method="post" id="driver" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Login:</h1>
<table border="1" class="table_dark">
  <tr>
    <th>Login</th>
    <th>Password</th>
    <th>Login</th>
  </tr>
  <tr>
    <td>
      <input type="text" name="login" form="driver" required>
    </td>
    <td>
      <input type="password" name="password" form="driver" required>
    </td>
    <td>
      <input type="submit" name="login" form="driver">
    </td>
  </tr>
</table>
<h4 style ="color:red" align="center">${errorMsg}</h4>
</body>
</html>
