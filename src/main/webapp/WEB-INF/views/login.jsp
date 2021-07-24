<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Вход</title>
</head>
<body>
<h1>Страница входа</h1>
<h4 style="color:#ff0048">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    Введите свой логин: <input type="text" name="login" required>
    Введите свой пароль: <input type="password" name="password" required>
    <button type="submit">Войти</button>
</form>
<h4><a href=${pageContext.request.contextPath}/drivers/add>Зарегистрироваться</a></h4>
</body>
</html>
