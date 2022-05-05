<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Header</title>
</head>
<body>
    <c:if test= "${pageContext.request.requestURI != '/WEB-INF/views/login.jsp'
            && pageContext.request.requestURI != '/WEB-INF/views/index.jsp'}">
    <a href="/">Back<c:out value="${pageContext.servletContext.contextPath}" /></a>
    </c:if>
    <c:if test= "${sessionScope.driver_id != null}">
        <a href="/logout">Logout</a>
    </c:if>
    <c:if test= "${sessionScope.driver_id == null}">
        <a href="/drivers/add">Create driver</a>
    </c:if>
</body>
</html>
