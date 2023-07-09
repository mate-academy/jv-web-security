<%--
  Created by IntelliJ IDEA.
  User: Alexandr
  Date: 09.04.2023
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login page</title>
</head>
<body>
<h4 style="color:red">${errorMsg}</h4>
<a href="${pageContext.request.contextPath}/drivers/add">Register</a>
<form method="post" action="${pageContext.request.contextPath}/login">
    Enter login <input type="text" name="login" required><br>
    Enter password <input type="password" name="password" required>
    <button type="submit">login</button>
</form>
</body>
</html>
