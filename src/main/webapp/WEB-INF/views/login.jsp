<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1 class="table_dark">Login page</h1>
<h4 class="table_dark" style="color: #ff0000">${errorMsg}</h4>
<form class="table_dark" method="post" action="${pageContext.request.contextPath}/login">
Login: <input type="text" name="login" required>
Password: <input type="password" name="password" required>
<button type="submit">Log in</button>
</form>
<h4 class="table_dark"><a href="${pageContext.request.contextPath}/drivers/add">Register</a> </h4>
</body>
</html>
