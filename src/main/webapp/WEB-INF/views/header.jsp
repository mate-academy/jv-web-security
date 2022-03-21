<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Header</title>
    <style>
        <%@include file="css/header.css"%>
    </style>
</head>
<body>
<ul>
    <li><a class="active" href="${pageContext.request.contextPath}/">Main Page</a></li>
    <li style="float:right"><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
</ul>
</body>
</html>
