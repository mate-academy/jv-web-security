<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h1>Login Page</h1>
    <form method="post" action="${pageContext.request.contextPath}/login">
        Login: <input type="email" name="login" required>
        Password: <input type="password" name="password" required>
        <button type="submit">Login</button>
    </form>

    <c:if test="${errorMsg != null}">
        <div style="background: red; text-align: center; width: 505px;">
            <h3 style="color: white;">Error: <c:out value="${errorMsg}"/></h3>
        </div>
    </c:if>
    <h4><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h4>
</body>
</html>
