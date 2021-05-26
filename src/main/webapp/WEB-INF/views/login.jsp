<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h2>Login on page</h2>
<h4 style="color:coral">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
Please enter your login <label>
    <input type="text" name="login" required>
</label> <br>
Please enter your password <label>
    <input type="password" name="password" required>
</label><br>
    <button type="submit">Login</button><br>
</form>
<h4><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h4>
</body>
</html>
