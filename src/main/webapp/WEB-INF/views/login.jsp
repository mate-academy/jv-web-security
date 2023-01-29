<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/authentification.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body class="body">
<form method="post" id="login" action="${pageContext.request.contextPath}/login"></form>
<h1 class="text">Login</h1>
<label>
    <input class="input" type="text" name="login" form="login" required placeholder="Input login">
</label>
<br>
<label>
    <input class="input" type="password" name="password" form="login" required placeholder="Input password">
</label>
<br>
<h1 class="text-error">${errorMsg}</h1>
<button class="button" type="submit" name="add" form="login">Sign In</button>
<br>
<br>
<a href="/registration" class="text-button">Sign Up</a>
</body>
</html>
