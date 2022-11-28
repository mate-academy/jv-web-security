<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1 style="color: red">${errorMsg}</h1>
<form  class="table_dark" method="post" action="${pageContext.request.contextPath}/login">
    Your login: <input type="text" name="login" required></br>
    Your password: <input type="password" name="password" required>
    <button type="submit">Login</button>
</form>
</body>
</html>
