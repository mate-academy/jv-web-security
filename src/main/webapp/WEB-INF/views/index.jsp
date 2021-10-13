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
<a href="${pageContext.request.contextPath}/drivers">Get all drivers</a><br>
<a href="${pageContext.request.contextPath}/manufacturers">Get all manufacturers</a><br>
<a href="${pageContext.request.contextPath}/cars">Get all cars</a><br>
</body>
</html>
