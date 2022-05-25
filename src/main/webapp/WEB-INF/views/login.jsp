<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Please, log in</h1>
<h4 style="color: darkred">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
Enter your login: <input type="text" name="Login">
Enter your password: <input type="password" name="Password">
<button type="submit">Submit</button>
</form>
</body>
</html>
