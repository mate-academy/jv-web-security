<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Login</title>
</head>
<body>
<h1>Login page</h1>
<%@include file='/WEB-INF/views/common/header.jsp' %>
<h4 style="color:red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
  Enter your login: <input type="text" name="login" required>
  Enter your password: <input type="password" name="password" required>
  <button type="submit">Login</button>
</form>
<h4><a href="${pageContext.request.contextPath}/register"/>Register</h4>
</body>
</html>