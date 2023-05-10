<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
  <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<head>
    <title>Log In</title>
</head>
<body>
  <form action="${pageContext.request.contextPath}/login" method="post">
    <table border="1" class="table_dark">
      <tr>
        <th>Login</th>
        <th>Password</th>
      </tr>
      <tr>
        <th>Login: <input type="text" name="login" required></th>
        <th>Password: <input type="password" name="password" required></th>
      <tr>
    </table>
    <input type="submit" name="add">
  </form>
  <h1 style="color: red">${errorMsg}</h1>
  <a href="${pageContext.request.contextPath}/drivers/add">Create Driver</a>
</body>
</html>
