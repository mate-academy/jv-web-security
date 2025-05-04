
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Let's login</h1>

<h4 style="color:red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
Please enter your username: <input type="text" name="username" required>
Please enter your password: <input type="text" name="password" required>
    <button type="submit">Login</button>
</form>
<br><br>
<a href="${pageContext.request.contextPath}/drivers/add">
    <input type="button" value="Register new driver" />
</a><br><br>
</body>
</html>
