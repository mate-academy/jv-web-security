<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
    form {
        text-align: center;
        font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
    }
    h4 {
        text-align: center;
        font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
    }
</style>
<html>
<head>
    <title>Login page</title>
</head>
<body>
<h4 style="color: red">${errorMsg}</h4>
<h1 class="table_dark">Login Page</h1>
<form method="post" id="car" action="${pageContext.request.contextPath}/login">
    Please enter your login: <input type="text" name="login" required>
    Please enter your password: <input type="password" name="password" required>
    <button type="submit">Login</button>
</form>
<h4><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h4>
</body>
</html>
