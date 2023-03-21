<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
<title>Login</title>
</head>
<body>
	<h1>Login page</h1>
	<form method="post" action="${pageContext.request.contextPath}/login">
		Login: <input type="text" name="login" required="required">
		Password: <input type="password" name="password" required="required">
		<button type="submit">Login</button>
	</form>
	<h4>
		<a href="${pageContext.request.contextPath}/drivers/add">Register
			a new driver</a>
	</h4>
	<h5 style="color: red">${errorMsg}</h5>
</body>
</html>