<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h4 style="color:red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    Please enter your login: <input type="text" name="login"><br>
    Please enter your password: <input type="password" name="password"><br>
    <button type="submit">Login</button>
</form>
<tr><td><a href="${pageContext.request.contextPath}/drivers/add">Create new Driver</a></td></tr>
</body>
</html>