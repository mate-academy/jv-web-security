<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Login page</h1>
<h3 style="color: red">${errorMessage}</h3>
<form name="loginForm" method="post" action="${pageContext.request.contextPath}/login">
    Name: <input type="text" name="login"/>
    Country: <input type="password" name="password"/>
    <button type="submit">Login</button>
</form>
<h4><a href="${pageContext.request.contextPath}/drivers/add"> Sign UP</a></h4>
</body>
</html>
