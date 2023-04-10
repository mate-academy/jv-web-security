<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/account.css' %>
</style>
<jsp:include page="/WEB-INF/views/index.jsp" />
<html>
<head>
    <title>Login</title>
</head>
<body>
<div class="container">
<h4 style="color:red">${errorMsg}</h4>
<form method="POST" action="${pageContext.request.contextPath}/login">
    <label for="login">Input login:</label>
    <br>
    <input type="text" name="login" id="login">
    <br><br>
    <label for="password">Input password:</label>
    <br>
    <input type="password" name="password" id="password">
    <br><br>
    <button type="submit">Login</button>
</form>
<p class="link">
    <a href="${pageContext.request.contextPath}/drivers/add">Don't have an account?</a>
</p>
</div>
</body>
</html>
