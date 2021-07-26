<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Login page</h1>
<h4>${errorMessage}</h4>
<form name="login" method="post" action="${pageContext.request.contextPath}/login">
    Login: <input type="text" name="login"/><br/>
    Password: <input type="password" name="password"/><br/>
    <input type="submit" value="login"/>
</form>
<h5><a href="drivers/add">Register</a></h5>
</body>
</html>
