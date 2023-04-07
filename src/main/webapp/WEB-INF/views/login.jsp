
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h2 align="center" style="flex-grow:0;font-size:40px; font-family: Calibri,serif;">
    Taxi Service</h2>
<h3 style="color: red">${errorMsg}</h3>
<form method="post" action="${pageContext.request.contextPath}/login">
    <h2>Login</h2>
    <input type="text" name="login"><br>
    <h2>Password</h2>
    <input type="password" name="password"><br>
    <button type="submit">Login</button>
</form>
<br>
<br>
<a href="${pageContext.request.contextPath}/registration">
    <input type="button" value="Registration"/>
</a>
</body>
</html>
