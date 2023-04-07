<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/body_center.css' %>
</style>
<html>
<head>
    <title>ATMS-Home</title>
</head>
<body class="body_center">
<h2>Welcome to ATMS<br>Anonymous Taxi Management System</h2>
<a href="${pageContext.request.contextPath}/manufacturers">
    <input type="button" value="Manage manufacturers" />
</a><br><br>
<a href="${pageContext.request.contextPath}/drivers">
    <input type="button" value="Manage drivers" />
</a><br><br>
<a href="${pageContext.request.contextPath}/cars">
    <input type="button" value="Manage cars" />
</a><br>
<a href="${pageContext.request.contextPath}/login">
    <input type="button" value="Login" />
</a><br>
<a href="${pageContext.request.contextPath}/logout">
    <input type="button" value="Logout" />
</a><br>
</body>
</html>
