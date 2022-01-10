<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login page</title>
</head>
<body>
<h1>Login in Taxi Service:</h1>
<h4 style="color:RED">${errorMsg}</h4>
<form method="post" id="login" action="${pageContext.request.contextPath}/login">
    Set Login: <input type="text" name="login"><br>
    Set Password: <input type="password" name="password"><br>
    <button type="submit">Login</button>
</form>
<h4><a href="${pageContext.request.contextPath}/drivers/add">Register in service</a></h4>
</body>
</html>
