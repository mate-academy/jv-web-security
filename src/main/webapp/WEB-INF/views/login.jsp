<%--
  Created by IntelliJ IDEA.
  User: Андрій
  Date: 21.12.2022
  Time: 12:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Login</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/login">
	Login <label> <input type="text" name="login"/> </label>
	Password <label> <input type="password" name="password"/> </label>
	<button type="submit">Login</button>
</form>
If not registered ? <a href="${pageContext.request.contextPath}/register">Register</a>
</body>
</html>
