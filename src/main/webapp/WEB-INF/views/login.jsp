<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
  <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
  <title>Login</title>
</head>
<body>
<h4 style="color: crimson">${errorMsg}</h4>
<form method="post" id="login" action="${pageContext.request.contextPath}/login">
<h1 class="table_dark">Log in:</h1>
<table border="1" class="table_dark">
  <tr><td>Login<input type="text" name="login" form="login" required></td></tr>
  <tr><td>Password<input type="password" name="password" form="login" required></td></tr>
</table>
<button class="login_button" type="submit" form="login">Log in</button>
</form>
</body>
</html>
