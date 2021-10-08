<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login for my team</title>
</head>
<body>
<h1 class="table_dark">Hello, driver</h1>
<h4  style="color:red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    Please type your login: <input type="text" name="login" required><br>
    Please type your password: <input type="password" name="password" required>
    <button type="submit">Login</button>
</form>
    <h4>If you are not registered please do so...</h4>
    <h4><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h4>
</body>
</html>
