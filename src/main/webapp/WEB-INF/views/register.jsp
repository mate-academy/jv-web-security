<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Register</title>
</head>
<body>
	<h3 style="color: crimson">${errorRegister}</h3>
	<form method="post" action="${pageContext.request.contextPath}/register">
		Name <label> <input type="text" name="name"> </label> <br>
		License <label> <input type="text" name="license"> </label> <br>
		Login <label> <input type="text" name="login"> </label> <br>
		Password <label> <input type="password" name="password"></label> <br>
		Repeat password <label> <input type="password" name="password_repeat"></label> <br>
		<button type="submit">Register</button>
	</form>
</body>
</html>
