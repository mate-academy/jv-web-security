<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login page</title>
</head>
<body>
<h1 class="table_dark">Please log in:</h1>
    <h3>${errorMessage}</h3>
        <form method="post" action="${pageContext.request.contextPath}/login">
            Enter your login: <input type="text" name="login" required>
            Enter your password: <input type="password" name="password" required>
            <button type="submit">Log in</button>
        </form>
</body>
</html>
