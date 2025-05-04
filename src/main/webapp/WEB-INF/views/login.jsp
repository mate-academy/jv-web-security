<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
  <%@include file="logout.jsp"%>
  <h4 style="color: red">${errorMsg}</h4>
  <form class="table_dark" method="post" action="${pageContext.request.contextPath}/login">
    Login <input class="table_dark" type="text" name="login"><br>
    Password <input class="table_dark" type="password" name="password"><br>
    <button class="table_dark" type="submit">Confirm</button>
  </form>
</body>
</html>
