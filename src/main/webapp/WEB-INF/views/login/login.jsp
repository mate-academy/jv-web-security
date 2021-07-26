<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Login Page</h1>
<h4 style="color:red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    Login <input type="text" name="login" required>
    Password <input type="password" name="password" required>
    <button type="submit">Login</button>
</form>
</body>
</html>
