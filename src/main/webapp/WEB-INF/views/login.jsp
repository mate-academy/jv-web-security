<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Login</title>
</head>
<body>
<h3 style="color: crimson">${msg}</h3>
<form method="post" action="${pageContext.request.contextPath}/login">
	Login <label> <input type="text" name="login"/> </label>
	Password <label> <input type="password" name="password"/> </label>
	<button type="submit">Login</button>
</form>
If not registered ? <a href="${pageContext.request.contextPath}/drivers/add">Register</a>
</body>
</html>
