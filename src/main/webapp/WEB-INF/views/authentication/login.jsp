<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<head>
    <title>Title</title>
</head>
<body>
<h1 class="table_dark">Login</h1>
<h4 style="color:red">${errorMsg}</h4>
<form method="post" id="login" action="${pageContext.request.contextPath}/login"></form>
<input type="text" name="username" form="login" required>
<input type="text" name="password" form="login" required><br>
<input type="submit" name="login" form="login" required><br>
<a href="/register">Register</a>
</body>
</html>
