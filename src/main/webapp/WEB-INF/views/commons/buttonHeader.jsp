<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Buttons</title>
</head>
<body>
<h4>
    <a href="${pageContext.request.contextPath}/index">
        <input type="button" value="Home" />
    </a>
    <a href="${pageContext.request.contextPath}/manufacturers">
        <input type="button" value="Manage manufacturers" />
    </a>
    <a href="${pageContext.request.contextPath}/cars">
        <input type="button" value="Manage cars" />
    </a>
    <a href="${pageContext.request.contextPath}/drivers">
        <input type="button" value="Manage drivers" />
    </a>
    <a href="${pageContext.request.contextPath}/cabinet">
        <input type="button" style="color: darkgreen; font-weight: bold" value="Cabinet" />
    </a>
    <a href="${pageContext.request.contextPath}/logout">
        <input type="button" style="background-color: lightcoral" value="Logout" />
    </a>
</h4>
</body>
</html>
