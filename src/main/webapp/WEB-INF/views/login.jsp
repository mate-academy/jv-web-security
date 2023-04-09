<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Login page</title>
</head>
<body>
<h1>Login page</h1>
<h4 style="color: red">${errorMsg}</h4>
<form method="POST" action="${pageContext.request.contextPath}/login">
  <input type="text" name="login" required>
  <input type="password" name="password" required>
  <button type="submit">Enter</button>
</form>
<h4><a href="${pageContext.request.contextPath}/register">Register</a></h4>
</body>
</html>
