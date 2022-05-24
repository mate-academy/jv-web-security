<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>LOGIN</title>
</head>
<body>
<h1>Login page</h1>
<h4 style="color:red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
  Please write your login: <input type="text" name="login" required>
  Please write your password: <input type="password" name="password" required>
  <button type="submit">Log in</button>
</form>
<button type="submit">
  <a href="${pageContext.request.contextPath}/drivers/add">Sign in</a>
</button>
</body>
</html>
