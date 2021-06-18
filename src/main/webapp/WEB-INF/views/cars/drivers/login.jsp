<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1 class="table_dark">Login Page</h1>
<h4 class="table_dark" style="color:red">${errorMsg}</h4>
<form class="table_dark" method="post" action="${pageContext.request.contextPath}/login">
    Please enter your login: <input type="text" name="login" required><br>
    Please enter your password: <input type="password" name="password" required><br>
    <button type="submit">Login</button>
</form>
<h4 class="table_dark"><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h4>
</body>
</html>
