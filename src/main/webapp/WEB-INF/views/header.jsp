<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/header.css' %>
</style>
<html>
<head>

</head>
<body>
<div class="header">
    <a href="${pageContext.request.contextPath}/" class="logo">DM Taxi service</a>
    <div class="header-right">
        <a class="active" href="${pageContext.request.contextPath}/index">Home</a>
        <a href="${pageContext.request.contextPath}/logout">Logout</a>
    </div>
</div>
</body>
</html>
