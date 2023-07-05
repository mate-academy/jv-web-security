<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
  <title>Login</title>
</head>
<body>
<h1>Login page</h1>
<h3 class="error-message">${errorMsg}</h3>
<form method="post" action="${pageContext.request.contextPath}/login">
  <table class="table_dark">
    <tr><td>Enter your login: <input type="text" name="login" id="login" required></td>
      <td>Enter your password: <input type="password" name="password" id="password" required></td>
      <td><button type="submit">Login</button></td>
    </tr>
  </table>
</form>
<h4><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h4>
</body>
</html>
