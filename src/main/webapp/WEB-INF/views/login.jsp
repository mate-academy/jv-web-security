<%--
  Created by IntelliJ IDEA.
  User: yulia
  Date: 26.01.2023
  Time: 19:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login page</title>
</head>
<body>
<h1>Login page</h1>
<h4 style="color: red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
Please enter your login <input type="text" name="login" required>
Please enter your password <input type="password" name="password" required>
<button type="submit">Login</button>
</form>
<h4><a href="{pageContext.request.contextPath}/register">Register</a></h4>
</body>
</html>
