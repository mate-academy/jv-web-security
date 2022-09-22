<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h3>Login</h3>
<h3 style="color: red">${errorMsg}</h3>
<form method="post" action="${pageContext.request.contextPath}/login">
  Enter your login: <input type="text" name="login"><br>
  Enter your password: <input type="password" name="password">
  <button type="submit">Login</button>
</form>
<br>
<h4><a href="${pageContext.request.contextPath}/drivers/add">register</a> </h4>
</body>
</html>
