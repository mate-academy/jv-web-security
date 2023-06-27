<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Login Page</h1>

<form action="http://localhost:8080/createDriver">
    <input type="submit" value="add new driver">
</form>

<h4 style="color: #ff00b7">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    Please enter your login: <label>
    <input type="text" name="login" required>
</label>
    Please enter your password: <label>
    <input type="password" name="password" required>
</label>
    <button type="submit">Login</button>
</form>

</body>
</html>
