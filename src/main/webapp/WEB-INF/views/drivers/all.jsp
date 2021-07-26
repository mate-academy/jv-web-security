<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<div class="content">
    <h1>All drivers:</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>License number</th>
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
                    <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">DELETE</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
