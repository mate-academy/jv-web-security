<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>Login page</title>
  <style>
    <%@include file='/WEB-INF/views/css/authentication.css' %>
  </style>
</head>
<body>
<form method="POST" action="${pageContext.request.contextPath}/login">
  <h1>Login page</h1>
  <h4 style="color: red">${errorMsg}</h4>
  <input type="text" name="login" placeholder="Username" required>
  <input type="password" name="password" placeholder="Password" required>
  <button type="submit">Enter</button>
  <h4><a href="${pageContext.request.contextPath}/register">Register</a></h4>
</form>
</body>
</html>
