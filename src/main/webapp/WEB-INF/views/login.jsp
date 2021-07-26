<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h4 style = "color:red">${errMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    Login:<input type="text" name="login"><br>
    <br>Password:<input type="password" name="password"><br>
    <br><button type="submit" >Confirm</button><br>
</form>
<a href="${pageContext.request.contextPath}/drivers/add">Registration</a>
</body>
</html>