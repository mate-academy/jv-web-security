<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Header page</title>
</head>
<style>
    ul {
        list-style-type: none;
        margin: 0;
        padding: 0;
    }

    li {
        display: inline;
    }
</style>
<body>
<ul>
    <li><a href="${pageContext.request.contextPath}/index"><h2>Home</h2></a></li>
    <li><a href="${pageContext.request.contextPath}/logout"><h2>Logout</h2></a></li>
</ul>
</body>
</html>
