<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/body_center.css' %>
</style>
<html>
<head>
    <title>ATMS-Login</title>
</head>
<body class="body_center">
<h4 style="color: red">${errorMsg}</h4>
<h3>Hi, you know what to do</h3>
<form method="post" action="${pageContext.request.contextPath}/login">
    Login <input type="text" name="login" required><br>
    Password <input type="password" name="password" required><br>
    <button type="submit">Login</button>
</form><br><br>
<h3>New here?</h3>
<form method="post" action="${pageContext.request.contextPath}/drivers/create">
    Login <input type="text" name="login" required><br>
    Password <input type="password" name="password" required><br>
    <button type="submit">Add me plz</button>
</form>
</body>
</html>
