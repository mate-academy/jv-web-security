<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Login Page</h1>
<h4 style="color: crimson">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
  Please enter your Login: <input type="text" name="login" required><br><br>
  Please enter your Password: <input type="password" name="password" required><br>
  <button type="submit">Login</button>
</form><br>
<h4><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h4>
</body>
</html>
