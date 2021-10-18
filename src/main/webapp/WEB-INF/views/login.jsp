<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Authentication</title>
</head>
<body>
<h1>Authentication</h1>
<h4 style="color: red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
  Login: <input type="text" name="login" required>
  Password: <input type="password" name="password" required>
  <button type="submit">login</button>
</form>
<h4><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h4>
</body>
</html>
