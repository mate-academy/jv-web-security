<%--
  Created by IntelliJ IDEA.
  User: SerhiiBuria
  Date: 28.09.2022
  Time: 14:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Login</title>
</head>
<body>
<h2>Login page</h2>
<h4 style="color:orangered">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
  Please enter your login <input type="text" name="login" required>
  Please enter your password <input type="password" name="password" required>
  <button type="submit">Login</button>
</form>
</body>
</html>

