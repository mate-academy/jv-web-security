<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
  <title>Login</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/login">
  <h1 class="table_dark">Please the form below</h1>
  <table class="table_dark">
    <td>Please enter your login <input type="text" name="login" required></td>
    <td>Please enter your password <input type="password" name="password" required></td>
    <td><button type="submit">Confirm</button></td>
    <td><button type="button"><a href="${pageContext.request.contextPath}/drivers/add">Register</a></button> </td>
    <td><h4 style="color: red">${errorMsg}</h4></td>
  </table>
</form>
</body>
</html>
