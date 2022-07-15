<%--
  Created by IntelliJ IDEA.
  User: kqlyn
  Date: 15.07.2022
  Time: 12:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
  <h1>Login</h1>
  <h4 style="color:red">%{errorMsg}</h4>
  <form method="post" action="${pageContext.request.contextPath}/login">
    Login: <input type="text" name="login" required><br>
    Password: <input type="password" name="password" required><br>
    <button type="submit">Login</button>
  </form>
<a href="${pageContext.request.contextPath}/drivers/add">add driver</a>
</body>
</html>
