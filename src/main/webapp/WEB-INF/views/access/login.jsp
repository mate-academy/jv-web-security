<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Enter your login and password</h1>
<h2 style="color: red">${errorMsg}</h2>
<form method="post" action="${pageContext.request.contextPath}/login">
  Login <input type="text" name="login">
  Password <input type="password" name="password">
  <button type="submit">Log in</button>
</form>
</body>
</html>
