<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login page</title>
</head>
<body>
<div class="content">
    <h1>Login page</h1>
    <h4 style="color:#ff2f2f">${errorMessage}</h4>
    <form method="post" id="login" action=${pageContext.request.contextPath}"/login"></form>
    <p>Enter your login</p><br>
    <input type="text" name="login" form="login" required>
    <p>Enter your password</p><br>
    <input type="password" name="password" form="login" required><br>
    <input type="submit" value="Login" form="login" >
    <h4><a href=${pageContext.request.contextPath}"/drivers/add">Register driver</a></h4>
</div>
</body>
</html>