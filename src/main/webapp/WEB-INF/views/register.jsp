<%--
  Created by IntelliJ IDEA.
  User: Андрій
  Date: 21.12.2022
  Time: 14:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>Register</title>
</head>
<body>
	<h3 style="color: crimson">${errorRegister}</h3>
	<form method="post" action="${pageContext.request.contextPath}/register">
		<table>
			<td> Name <label> <input type="text" name="name"> </label> <br> </td>
			<td> License <label> <input type="text" name="license"> </label> <br> </td>
			<td> Login <label> <input type="text" name="login"> </label> <br> </td>
			<td> Password <label> <input type="password" name="password1"></label> </td>
			<td> Repeat password <label> <input type="password" name="password2"></label> </td>
		</table>
		<button type="submit">Register</button>
	</form>
</body>
</html>
