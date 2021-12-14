<%@ page contentType="text/html;charset=UTF-8" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
    <h4 align = "center" style="color: red">${errorMsg}</h4>
</head>
<body>
<h1 align = "center" class="table_dark">Login Page</h1>
<br>
<form align = "center" method = "post" action = "${pageContext.request.contextPath}/login">
    Login : <input type = "text"  name = "login" required><br>
    <br>
    Password : <input type = "password" name = "password" required><br>
    <br>
    <button type = "submit">Login</button>
</form>
</body>
</html>
