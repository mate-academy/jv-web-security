<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login page</title>
</head>
<body>
<h4 style="color:red">${errorMsg}</h4>
<form action="${pageContext.request.contextPath}/login" method="post">
    Enter your login: <input type="text" name="login" required><br>
    Enter your password: <input type="password" name="password" required>
    <button type="submit">Login</button>
</form>

</body>
</html>
