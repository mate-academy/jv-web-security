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
<c:choose>
  <c:when test= "${sessionScope.driver_id != null}">
    <a href="${pageContext.request.contextPath}/logout">Logout</a>
  </c:when>
  <c:otherwise>
    <a href="${pageContext.request.contextPath}/drivers/add">Create driver</a>
  </c:otherwise>
</c:choose>
</body>
</html>
