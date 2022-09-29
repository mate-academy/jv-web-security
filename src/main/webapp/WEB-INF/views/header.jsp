<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
    <title></title>
</head>
<body>
<c:choose>
    <c:when test="${driver_id == null}">
        <h3 style="text-align:right"><a href="${pageContext.request.contextPath}/login">login</a></h3>
    </c:when>
    <c:otherwise>
        <h3 style="text-align:right"><a href="${pageContext.request.contextPath}/logout">logout</a></h3>
    </c:otherwise>
</c:choose>
</body>
</html>