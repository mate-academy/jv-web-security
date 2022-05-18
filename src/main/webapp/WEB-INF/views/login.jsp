<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login Page</title>
</head>
<body>
<h1>Login page</h1>
<h3 style="color: red">${errorMessage}</h3>
<form method="post" action="${pageContext.request.contextPath}/login">
    Login <input type="text" name="login"/>
    Password <input type="password" name="password"/>
    <button type="submit">LOGIN</button>
</form>
<h3><a href="${pageContext.request.contextPath}/drivers/add">Registration a new driver</a></h3>
</body>
</html>
