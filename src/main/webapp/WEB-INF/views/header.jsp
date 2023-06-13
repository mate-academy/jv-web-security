<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    <%@ include file="/WEB-INF/views/css/header.css" %>
</style>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table class="table_header">
    <tr>
        <td class="logo">Taxi service</td>
        <td class="menu_container">
        <c:choose>
            <c:when test="${empty driver_id}">
                <c:if test="${requestScope['javax.servlet.forward.request_uri'] != '/login'}">
                    <a class="main_menu" href="${pageContext.request.contextPath}/login">Login</a>
                </c:if>
                <c:if test="${requestScope['javax.servlet.forward.request_uri'] == '/login'}">
                    <a class="main_menu" href="${pageContext.request.contextPath}/drivers/add">Add driver</a>
                </c:if>
            </c:when>
            <c:otherwise>
                <c:if test="${requestScope['javax.servlet.forward.request_uri'] != '/index'}">
                    <a class="main_menu" href="${pageContext.request.contextPath}/index">Main menu</a> |
                </c:if>
                <a class="main_menu" href="${pageContext.request.contextPath}/logout">Logout</a>
            </c:otherwise>
        </c:choose>
        </td>
    </tr>
</table>
</body>
</html>
