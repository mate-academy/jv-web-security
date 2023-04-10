<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Register page</title>
  <style>
    <%@include file='/WEB-INF/views/css/authentication.css' %>
  </style>
</head>
<body>
<form method="POST" action="${pageContext.request.contextPath}/register">
  <h1>Register page</h1>
  <h4 style="color: red">${errorMsg}</h4>
  <input type="text" name="name" placeholder="Name" required>
  <input type="text" name="license_number" placeholder="License number" required>
  <input type="text" name="login" placeholder="Username" required>
  <input type="password" name="password" placeholder="Password" required>
  <input type="password" name="repeatPassword" placeholder="Repeat the password" required>
  <button type="submit">Enter</button>
  <h4><a href="${pageContext.request.contextPath}/login">Login</a></h4>
</form>
</body>
</html>
