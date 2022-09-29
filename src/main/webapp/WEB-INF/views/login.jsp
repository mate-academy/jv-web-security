<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h2>Login page</h2>
<h4 style="color: red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    Please enter your login: <input name="login" type="text" required>
    Please enter your password: <input name="password" type="password" required>
    <button type="submit" name="submitButton">Login</button>
</form>
<br>
<br>
<h4><a href="${pageContext.request.contextPath}/register">Register</a></h4>
</body>
</html>
