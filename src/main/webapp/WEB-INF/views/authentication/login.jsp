<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Login</title>
</head>
<body>
<h1>Login page</h1>
<h4 style="color: red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
  Please enter your login: <label>
  <input type="text" name="login" required>
</label>
  Please enter your password: <label>
  <input type="password" name="password" required>
</label>
  <button type="submit">Login</button>
</form>
<h4><a href="${pageContext.request.contextPath}/register">Register</a></h4>
</body>
</html>
