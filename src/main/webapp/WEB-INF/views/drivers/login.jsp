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
<%@include file="../header.jsp"%>
<h4 style="color: red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
  <table border="1" class="table_dark">
    Login    <input type="text" name="login" required></br>
    Password  <input type="password" name="password" required></br>
    <button type="submit">Enter</button></br>
  </table>
</form>
<tr><td><a href="${pageContext.request.contextPath}/drivers/add"><button type="submit">
  Register</button></a></td></tr>
</body>
</html>
