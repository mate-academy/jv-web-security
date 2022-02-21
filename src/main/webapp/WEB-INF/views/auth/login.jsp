<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h5 style="color: red"><c:out value="${message}"/>
<form method="post" action="${pageContext.request.contextPath}/login">
    <table>
        <tr>
            <td>login</td>
            <td>
                <input type="text" name="login" required/>
            </td>
        </tr>
        <tr>
            <td>password</td>
            <td>
                <input type="password" name="password" required/>
            </td>
        </tr>
    </table>
    <input type="submit" value="login"/>
</form>
<p>
<a href="${pageContext.request.contextPath}/drivers/add">Registration</a>
</p>
</body>
</html>
