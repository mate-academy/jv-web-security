<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Login</title>
</head>
<body>
<h1>Login</h1>
<h2><c:out value="${message}"/></h2>
<form method="post" action="${pageContext.request.contextPath}/login">
  Login <input type="text" name="login" required>
  Password <input type="password" name="password" required>
  <button type="submit">login</button>
</form>
<h4><a href="${pageContext.request.contextPath}/register">Registration</a></h4>
</body>
</html>
