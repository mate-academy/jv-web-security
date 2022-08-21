<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>To Home page</title>
</head>
<body>
<table class="table_dark" style="background: none">
    <tr>
        <td style="text-align: left; border: none">
            <c:if test="${servletPath != '/' && servletPath != '/login'}">
                <a href="${pageContext.request.contextPath}/">Home page</a>
            </c:if>
        </td>
        <td style="text-align: right; border: none">
            <c:if test="${servletPath != '/login'}">
                <c:if test="${driver_id == null}">
                    <a href="${pageContext.request.contextPath}/login">Log in</a>
                </c:if>
                <c:if test="${driver_id != null}">
                    <a href="${pageContext.request.contextPath}/logout">Log out</a>
                </c:if>
            </c:if>
            <c:if test="${servletPath == '/login'}">
                <a href="${pageContext.request.contextPath}/drivers/add">Sign up</a>
            </c:if>
        </td>
    </tr>
</table>
</body>
</html>
