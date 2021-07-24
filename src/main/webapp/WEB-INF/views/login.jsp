<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1 align="center">Fill out the form below</h1>
<h4 style="color: red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    Login: <input type="text" name="login" style=position:absolute;left:10%; required><br>
    <br>Password : <input type="password" name="password" style=position:absolute;left:10%; required><br>
    <br><button type="submit" style=position:absolute;left:5%;>Confirm</button><br>
</form>
<a href="/drivers/add">Registration</a>
</body>
</html>
