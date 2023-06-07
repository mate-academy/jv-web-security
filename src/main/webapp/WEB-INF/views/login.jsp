<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Login</title>
  <style>
    <%@include file='/WEB-INF/views/css/login.css' %>
  </style>
</head>
<body>
<h1>Login Page</h1>
<h4>${error}</h4>
<form action="${pageContext.request.contextPath}/login" method="post">
  <label for="login">Login:</label>
  <input type="text" id="login" name="login" required>
  <br>
  <label for="password">Password:</label>
  <input type="password" id="password" name="password" required>
  <br>
  <button type="submit">Login</button>
</form>
<a href="${pageContext.request.contextPath}/drivers/add">Registration a new driver</a>
</body>
</html>
