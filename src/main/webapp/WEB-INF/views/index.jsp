<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        <%@include file='/WEB-INF/views/css/background-styles.css'%>
    </style>
    <title>My taxi company</title>
</head>
<body>
<h1>Hello, mates!</h1>
<h3><a href="${pageContext.request.contextPath}/drivers">Display all drivers</a></h3>
<h3><a href="${pageContext.request.contextPath}/manufacturers">Display all manufacturers</a></h3>
<h3><a href="${pageContext.request.contextPath}/cars">Display all cars</a></h3>
<h3><a href="${pageContext.request.contextPath}/cars_by_driver">Display only my cars</a></h3><br>
<h3><a href="${pageContext.request.contextPath}/logout">Logout</a></h3>
</body>
</html>
