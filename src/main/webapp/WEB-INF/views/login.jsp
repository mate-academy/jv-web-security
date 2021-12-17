<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Login page</h1>
<form method="post" id="login" action="${pageContext.request.contextPath}/login"></form>
    <input type="text" name="login" placeholder="Enter your login" form="login" required>
    <input type="password" name="password" placeholder="Enter your password" form="login" required>
    <input type="submit" name="add" form="login">
    <br>
    <span style="color:RED">${errorMsq}</span>
    <h4><a href="${pageContext.request.contextPath}/drivers/add">Register Driver</a></h4>
</body>
</html>