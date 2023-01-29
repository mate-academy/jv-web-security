<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/authentification.css' %>
</style>
<html>
<head>
    <title>Registration</title>
</head>
<body class="body">
<form method="post" id="registration" action="${pageContext.request.contextPath}/registration"></form>
<h1 class="text">Registration</h1>
<label>
    <input class="input" type="text" name="login" form="registration" required placeholder="Input login">
</label>
<br>
<label>
    <input class="input" type="text" name="name" form="registration" required placeholder="Input name">
</label>
<br>
<label>
    <input class="input" type="text" name="license" form="registration" required placeholder="Input driver license">
</label>
<br>
<label>
    <input class="input" type="password" name="password" form="registration" required placeholder="Input password">
</label>
<br>
<label>
    <input class="input" type="password" name="repeatPassword" form="registration" required placeholder="Repeat password">
</label>
<br>
<h1 class="text-error">${errorMsg}</h1>
<button class="button" type="submit" name="add" form="registration">Sign Up</button>
<br>
<br>
<a href="${pageContext.request.contextPath}/login" class="text-button">Sign In</a>
</body>
</html>
