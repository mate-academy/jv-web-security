<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Authentication</title>
</head>
<body>
    <form method="post" id="log" action="${pageContext.request.contextPath}/login">
        <h1>Login page:</h1>
        <a>Login: <input type="text" name="login" form="log" required></a>
        <a>Password: <input type="password" name="password" form="log" required></a>
        <a><input type="submit" name="Submit" form="log"></a></br>
        <a href="${pageContext.request.contextPath}/drivers/add">register</a>
    </form>
<h2 style="color: red">${errorMsg}</h2>
</body>
</html>
