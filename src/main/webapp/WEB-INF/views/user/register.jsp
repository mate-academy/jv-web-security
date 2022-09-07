<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>My team</title>
</head>
<body>
    <h2><c:out value="${message}"/></h2>
    <form method="post" action="${pageContext.request.contextPath}/register">
        Login <input type="text" name="login" required><br>
        Password <input type="password" name="password" required><br>
        Repeat password <input type="password" name="repeatPassword" required><br>
        Name <input type="text" name="name" required><br>
        License number<input type="text" name="licenseNumber" required><br>
        <button type="submit">Register</button>
    </form>
    <h4><a href="${pageContext.request.contextPath}/login">Login</a></h4>
</body>
</html>
