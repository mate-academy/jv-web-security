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
<h1>Login Page</h1>
<form method="post" action="${pageContext.request.contextPath}/login">
  Pleas enter your login: <input type="text" name="login" required>
  Pleas enter your password: <input type="password" name="password" required>
  <button type="submit">Login</button>
</form>
<h3 style="color: darkred">${errorMsg}</h3>
<h4><a href="${pageContext.request.contextPath}/register">Register</a></h4>
</body>
</html>
