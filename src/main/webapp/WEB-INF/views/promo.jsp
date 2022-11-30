<%@ page contentType="text/html;charset=UTF-8" %>
<style>
    <%@include file='/WEB-INF/views/css/promo.css' %>
</style>
<html>
<head>
    <title>Welcome to taxi service</title>
</head>
<body>
<div class="appLogin">
    <h1>Welcome to our taxi service application</h1>
    <p>To continue please log in or register new account</p>
    <div class="buttons">
        <a href="${pageContext.request.contextPath}/login">Login</a>
        <a href="${pageContext.request.contextPath}/drivers/add">Registration</a>
    </div>
</div>
</body>
</html>
