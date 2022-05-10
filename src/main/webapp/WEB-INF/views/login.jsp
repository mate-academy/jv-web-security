<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Log in page</title>
</head>
<body>
<%@ include file = "header.jsp" %>
<form method="post" id="loginForm" action="${pageContext.request.contextPath}/login"></form>
<h1 class="table_dark">Log in:</h1>
<h4 style="color:red;text-align:center">${errorMessage}</h4>
<table border="1" class="table_dark">
    <tr>
        <th>Username</th>
        <th>Password</th>
        <th>Log in</th>
    </tr>
    <tr>
        <td>
            <input type="text" name="login" form="loginForm" required>
        </td>
        <td>
            <input type="password" name="password" form="loginForm" required>
        </td>
        <td>
            <input type="submit" name="Sign in" form="loginForm" required>
        </td>
    </tr>
</table>
</body>
</html>
