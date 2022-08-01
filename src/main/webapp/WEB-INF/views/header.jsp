<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:choose>
    <c:when test="${driver_name!=null}">
        <h4>Welcome, <c:out value="${driver_name}"></c:out>!</h4><br>
        <a href="${pageContext.request.contextPath}/logout">Logout</a>
    </c:when>
    <c:otherwise>
        <a href="${pageContext.request.contextPath}/login">Login</a>
    </c:otherwise>
</c:choose>
</body>
</html>
