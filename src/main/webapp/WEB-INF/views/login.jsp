<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
  <head>
    <title>Login</title>
  </head>
  <body  border="1" class="table_dark">
  <h1 class="table_dark">Login page</h1>
  <form method="post" action="${pageContext.request.contextPath}/login">
    <label>Login</label>
    <label>
      <input type="text" name="login" required>
    </label>
    <br>
    <label>Password</label>
    <label>
      <input type="password" name="password" required>
      <h4 style="color: red">${errorMsg}</h4>
    </label>
    <button style="color: aliceblue;font-size: 50px; background-color: dimgray;border: none" type="submit">
        Log in
    </button>
    <button style="color: aliceblue;font-size: 50px; background-color: dimgray;border: none" type="submit">
      <a style="text-decoration: none; color: whitesmoke" href="${pageContext.request.contextPath}/drivers/add">
        Sign in
      </a>
    </button>
  </form>
  </body>
</html>
