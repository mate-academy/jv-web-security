<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Buttons</title>
    <style>div>a{
        text-decoration: none;
    }</style>
</head>
<body>
<div>
    <a href="${pageContext.request.contextPath}/taxi-service">
        <button>Home</button>
    </a>
    <a href="${pageContext.request.contextPath}/manufacturers">
        <button>Manage manufacturers</button>
    </a>
    <a href="${pageContext.request.contextPath}/drivers">
        <button>Manage drivers</button>
    </a>
    <a href="${pageContext.request.contextPath}/cars/my">
        <button>Manage cars</button>
    </a>
    <a href="${pageContext.request.contextPath}/logout">
        <button>Logout</button>
    </a>
</div>
</body>
</html>
