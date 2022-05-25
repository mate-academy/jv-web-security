<%@ page contentType="text/html;charset=UTF-8" %>
<style>
    <%@include file='/WEB-INF/views/css/style.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<div class="registration-cssave">
    <form method="post" action="${pageContext.request.contextPath}/login">
        <h3  class="text-center"><div style="text-align: center;"> Форма входа</div></h3>
        <div class="form-group">
            <input class="form-control item" type="text" name="login" id="username" placeholder="Логін" required>
        </div>
        <div class="form-group">
            <input class="form-control item" type="password" name="password" id="password" placeholder="Пароль" required>
        </div>
        <div class="form-group">
            <button class="btn btn-primary btn-block login" type="submit">Вхід в акаунт</button>
        </div>
        <div class="form-group">
            <button  class="btn btn-primary btn-block create-account">
                <a class="btn btn-primary btn-block create-account" href="${pageContext.request.contextPath}/drivers/add">Реєстрація</a>
            </button>
        </div>
    </form>
</div>
</body>
</html>
