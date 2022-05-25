<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <span style="font-family: monospace; text-align: center">
        <h1>Login Page</h1>
        <h4 style="color: red">${errorMsg}</h4>

            <form method="post" style="font-family: monospace; text-align: center " action="${pageContext.request.contextPath}/login">
                <label for="login_form">Login:</label> <br>
                <input id="login_form" type="text" name="login" required> <br>
                <label for="password_form">Password:</label><br>
                <input id="password_form" type="password" name="password" required> <br><br>
                <input type="submit" value="Sign in" style="font-family: monospace; ">
            </form>
        <h4><%@include file="register.jsp" %></h4>
    </span>
</body>
</html>
