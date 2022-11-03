<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
<h1>Login page</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/login">
  Enter login <input type="text" name="login" required>
  Enter password <input type="password" name="password" required>
  <button type="submit">login</button>
</form>
<h4><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h4>
</body>
</html>
