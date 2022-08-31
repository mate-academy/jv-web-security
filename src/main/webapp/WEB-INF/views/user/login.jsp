<%--
  Created by IntelliJ IDEA.
  User: ssuni
  Date: 30.08.2022
  Time: 14:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
<h1>Login page</h1>
<h2><c:out value="${message}"/></h2>
    <form method="post" action="${pageContext.request.contextPath}/login">
        Login <input type="text" name="login" required>
        Password <input type="password" name="password" required>
        <button type="submit">login</button>
    </form>
<h4><a href="${pageContext.request.contextPath}/register">Register</a></h4>
</body>
</html>
