<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Buttons</title>
</head>
<body>
<h4>
    <a href="${pageContext.request.contextPath}/taxiservice">
        <input type="button" value="Home" />
    </a>
    <a href="${pageContext.request.contextPath}/manufacturers">
        <input type="button" value="Manage manufacturers" />
    </a>
    <a href="${pageContext.request.contextPath}/drivers">
        <input type="button" value="Manage drivers" />
    </a>
    <a href="${pageContext.request.contextPath}/cars">
        <input type="button" value="Manage cars" />
    </a>
    <a href="${pageContext.request.contextPath}/logout">
        <input type="button" value="Logout" />
    </a>
</h4>
</body>
</html>