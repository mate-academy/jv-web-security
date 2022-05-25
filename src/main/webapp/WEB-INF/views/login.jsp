<%@ page contentType="text/html;charset=UTF-8" %>
<style>
    <%@include file='/WEB-INF/views/css/style.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<div class="registration-form">
    <form method="post" action="${pageContext.request.contextPath}/login">
        <h2  class="text-center">Login</h2>
        <div class="form-group">
            <input class="item" type="text" name="login" id="username" placeholder="Логин" required>
        </div>
        <div class="form-group">
            <input class="item" type="password" name="password" id="password" placeholder="Пароль" required>
        </div>
        <div class="form-group">
            <button class="login" type="submit">Вхід</button>
        </div>
        <div class="form-group">
            <p class="text-center">Не має акаунту?
                <a href="${pageContext.request.contextPath}/drivers/add">Реєстрація</a>
            </p>
        </div>
    </form>
</div>
</body>
</html>
