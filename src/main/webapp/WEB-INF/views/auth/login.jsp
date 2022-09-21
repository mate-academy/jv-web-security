<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Login Page</title>
</head>
<body>
<h1>Please login</h1>
<h4 style="color: red">${message}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
  Driver login <input type="text" name="login" required>
  Password <input type="password" name="password" required>
  <button type="submit">Login</button>
</form>
<br>
<h4><a href="${pageContext.request.contextPath}/drivers/add"> <button type="submit">Register</button> </a></h4>
</body>
</html>