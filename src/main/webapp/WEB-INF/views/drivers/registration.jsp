<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Registration</title>
</head>
<body>
<div class="formStyle">
    <form method="post" id="driver" action="${pageContext.request.contextPath}/registration">
        <div class="formTitle">Name</div>
        <div class="formTitle">
            <input type="text" name="name" form="driver" required></br>
        </div>
        <div class="formTitle">License Number</div>
        <div class="formTitle">
            <input type="text" name="licenseNumber" form="driver" required></br>
        </div>
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
            <input type="submit" name="add" form="driver" value="add" class="submit">
            <a href="${pageContext.request.contextPath}/login">log in</a>
        </div>
    </form>
</div>
</table>
</body>
</html>

