<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Fill the form</h1>
<h4 style="color:red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    Login: <input type="text" name="login"><br>
    Password: <input type="password" name="password"><br>
    <button type="submit">Login</button>
</form>
<h4><a href="${pageContext.request.contextPath}/drivers/add">Add new driver</a></h4>
</body>
</html>
