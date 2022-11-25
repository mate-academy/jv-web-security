<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Register</title>
</head>
<body>
<h1>Register Page</h1>
<h4 style="color:red">${errorMessage}</h4>
<table>
<form method="post" action="${pageContext.request.contextPath}/register">
  <tr><td>Name <input type="text" name="name" required></tr></td>
  <tr><td>License <input type="text" name="license" required></tr></td>
   <tr><td>Login <input type="text" name="login" required></tr></td>
   <tr><td>Password <input type="password" name="password" required></tr></td>
   <tr><td>Repeat password <input type="password" name="repeat_password" required></tr></td>
   <tr><td><button type="submit">Registration</button></td></tr>
</form>
</table>
<h4><a href="${pageContext.request.contextPath}/login">Login</a> </h4>
</body>
</html>
