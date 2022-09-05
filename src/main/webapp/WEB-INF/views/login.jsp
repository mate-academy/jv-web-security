<%--
  Created by IntelliJ IDEA.
  User: Natalia
  Date: 05.09.2022
  Time: 16:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2 style="color: red">${errorMsg}</h2>

<form method="post" action="${pageContext.request.contextPath}/login">
    Login <input type="text" name="Login"><br>
    Password <input type="password" name="Password"><br>
    <button type="submit">Login</button>
</form>

<a href="${pageContext.request.contextPath}/register"><input type="button" value="Register" /></a>
</body>
</html>
