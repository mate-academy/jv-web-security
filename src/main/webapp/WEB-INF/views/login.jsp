<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<html>
<head>
  <title>AUTHENTICATION</title>
</head>
<body>
<h1>enter login and password:</h1>
<form method="post" action="${pageContext.request.contextPath}/login">
  login: <input type="text" name="login" required>
  password: <input type="password" name="password" required>
  <button type="submit">LOGIN</button>
</form>
</body>
</html>
