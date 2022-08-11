<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Log in</title>
</head>
<form>
<h1 class="table_dark">Login page</h1>
<h4 style="color: red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login"></form>
Please enter your login: <input type="text" name="login"required>
Please enter your password: <input type="password" name="password"required>
<button type="submit">Log in</button>
</form>
</body>
</html>
