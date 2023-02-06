<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Registration</title>
</head>
<body>
<form method="post" id="register" action="${pageContext.request.contextPath}/registration"></form>
<h1 class="table_dark">Driver registration:</h1>
<table border="1" class="table_dark">
        <tr><td>Name<input type="text" name="name" form="register" required></td></tr>
        <tr><td>License number<input type="text" name="license_number" form="register" required></td></tr>
        <tr><td>Login<input type="text" name="login" form="register" required></td></tr>
        <tr><td>Password<input type="password" name="password" form="register" required></td></tr>
        <tr><td>Register<input type="submit" name="register" form="register"></td></tr>
</table>
</body>
</html>
