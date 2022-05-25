<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login</title>
</head>
<body>
<div class="formStyle">
    <form method="post" id="driver" action="${pageContext.request.contextPath}/login">
        <div class="formTitle">Login</div>
        <div class="formTitle">
            <input type="text" name="login" form="driver" required></br>
        </div>
        <div class="formTitle">Password</div>
        <div class="formTitle">
            <input type="password" name="password" form="driver" required></br>
        </div>
        <div class="formTitle">
            <h5 style="color:red">${errorMassage}</h5>
        </div>
        <div class="formTitle">
            <input type="submit" name="add" form="driver" value="log in" class="submit">
            <a href="${pageContext.request.contextPath}/registration">register</a>
        </div>
    </form>
</div>
</table>
</body>
</html>

