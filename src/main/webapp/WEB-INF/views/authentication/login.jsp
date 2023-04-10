<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <form style="align-content: center" method="post" action="${pageContext.request.contextPath}/login">
        <h1>Log in</h1>
        <h4 style="color: red">${errorMsg}</h4>
        <label for="login">Enter login</label>
        <input type="text" name="login" id="login" required><br><br>
        <label for="password">Enter password</label>
        <input type="password" name="password" id="password" required><br><br>
        <button type="submit">Login</button>
    </form>
    <a href="${pageContext.request.contextPath}/drivers/add"><input type="button" value="Register"/></a>
</body>
</html>
