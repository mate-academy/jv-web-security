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
<h1 class="table_dark">Authentication</h1>
<form method="post" action="${pageContext.request.contextPath}/login">
  <div style="text-align:center;">
    <br>
    Please enter your login: <input type="text" name="login" required><br>
    Please enter your password: <input type="password" name="password" required><br>
    <br>
    <button type="submit">Login</button>
    <h4><a href="${pageContext.request.contextPath}/drivers/add">Registration</a></h4>
    <h4 style="color:red">${errorMsg}</h4>
  </div>
</form>
</body>
</html>
