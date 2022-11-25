<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <tr>
        <th> <c:out value="${login}"/></th>
        <th><a href="${pageContext.request.contextPath}/logout">Logout</a></th>
        <th><a href="${pageContext.request.contextPath}/index">Menu</a></th>
    </tr>
</table>
</body>
</html>
