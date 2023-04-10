<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main page taxi</title>
    <style>
        <%@include file='/WEB-INF/views/css/bootstrap.min.css' %>
        <%@include file='/WEB-INF/views/css/style.css' %>
    </style>
</head>
<body>
    <nav class="navbar navbar-light" style="background-color: lightgray;">
        <div class="container-fluid">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/manufacturers">Manufacturers</a>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/drivers">Drivers</a>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/cars">All cars</a>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/drivers/cars">Cars of current user</a>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/logout">Logout</a>
        </div>
    </nav>
    <br>
</body>
</html>
