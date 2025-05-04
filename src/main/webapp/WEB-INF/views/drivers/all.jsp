<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/all.css' %>
</style>
<jsp:include page="/WEB-INF/views/index.jsp" />
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<div class="container">
    <h1>All drivers</h1>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>License number</th>
        <th>Login</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="driver" items="${drivers}">
        <tr>
            <td>
                <c:out value="${driver.id}"/>
            </td>
            <td>
                <c:out value="${driver.name}"/>
            </td>
            <td>
                <c:out value="${driver.licenseNumber}"/>
            </td>
            <td>
                <c:out value="${driver.login}"/>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}"
                   class="delete-button">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</div>
</body>
</html>
