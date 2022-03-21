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
<h1 class="table_dark">Please login</h1>
<h4 class="table_dark" style="color: red">${errorMesage}</h4>
<form class="table_dark" method="post" action="${pageContext.request.contextPath}/login">
  Login <input type="text" name="login" required>
  Password <input type="password" name="password" required>
  <button type="submit">Login</button>
</form>
<h3 class="table_dark"><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h3>
</body>
</html>
