<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="shortcut icon" href="#" />
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>driver login</title>
</head>
<body>
<h1 class="table_dark">Please login into system</h1>
<h4 style="color: #ff0000">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    Please enter your login: <input type="text" name="login" required>
    Please enter your password: <input type="text" name="password" required>
    <button type="submit">Login</button>
</form>
<a href="${pageContext.request.contextPath}/drivers/add">Add new driver</a>
</body>
</html>
