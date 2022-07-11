<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<html>
<head>
  <title>AUTHENTICATION</title>
</head>
<body>
<h1>LOGIN PAGE</h1>
<h4 style="color:red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
  login: <input type="text" name="login" required>
  password: <input type="password" name="password" required>
  <button type="submit">LOGIN</button>
</form>
<tr><td><a href="${pageContext.request.contextPath}/registration">REGISTRATION</a></td></tr>
</body>
</html>
