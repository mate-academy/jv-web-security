<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/">
    <input type="button" value="home"/>
</a>
<a href="${pageContext.request.contextPath}/drivers">
    <input type="button" value="drivers"/>
</a>
<a href="${pageContext.request.contextPath}/cars">
    <input type="button" value="cars"/>
</a>
<a href="${pageContext.request.contextPath}/manufacturers">
    <input type="button" value="manufacturers"/>
</a>
<a href="${pageContext.request.contextPath}/logout">
    <input type="button" value="logout"/>
</a>
</body>
</html>
