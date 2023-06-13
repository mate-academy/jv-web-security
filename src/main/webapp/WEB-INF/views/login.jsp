<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    <%@ include file="/WEB-INF/views/css/table_dark.css" %>
</style>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1 class="table_dark">Login</h1>
<c:if test="${!empty errorMessage}">
    <p class="table_dark" style="color: red; font-size: medium">${errorMessage}</p>
</c:if>
<form method="post" id="authentication_form" action="${pageContext.request.contextPath}/login">
<table border="1" class="table_dark">
    <tr>
        <th>Login</th>
        <th>Password</th>
        <th></th>
    </tr>
    <tr>
        <td>
            <input type="text" name="login" form="authentication_form" required>
        </td>
        <td>
            <input type="password" name="password" form="authentication_form" required>
        </td>
        <td>
            <input type="submit" value="login" form="authentication_form">
        </td>
    </tr>
</table>
</form>
</body>
</html>
