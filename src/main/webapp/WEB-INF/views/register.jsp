<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Register</title>
</head>
<body>
<h1>Register Page</h1>
<h4 style="color:red">${errorMessage}</h4>
<form method="post" action="${pageContext.request.contextPath}/register">
  Enter login <input type="text" name="login" required>
  Enter password <input type="password" name="password" required>
  Repeat password <input type="password" name="repeat_password" required>
  <button type="submit">Registration</button>
</form>
<h4><a href="${pageContext.request.contextPath}/login">Login</a> </h4>
</body>
</html>
