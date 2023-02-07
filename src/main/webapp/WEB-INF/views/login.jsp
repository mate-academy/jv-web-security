<%@ page contentType="text/html;charset=UTF-8" %>
<style>
    <%@include file="/WEB-INF/views/css/table_dark.css"%>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Welcome</h1>
Enter login data below<br>
<h4 style="color: red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
Login:<br>
    <input type="text" name="login" required> <br>
Password:<br>
    <input type="password" name="password" required><br>
<button type="submit">Login</button>
</form>
<h4><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h4>
</body>
</html>
