<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Manufacturers</title>
</head>
<%@include file="../headers/mainHeader.jsp" %>
<body>
<div class="container mt-4 text-center">
    <h1 class="display-5">Manufacturers</h1>
    <table class="table table-striped-columns text-center">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Country</th>
            <th>Deletion</th>
        </tr>
        <c:forEach items="${manufacturers}" var="manufacturer">
            <tr>
                <td><c:out value="${manufacturer.id}"/></td>
                <td><c:out value="${manufacturer.name}"/></td>
                <td><c:out value="${manufacturer.country}"/></td>
                <td>
                    <a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">
                        DELETE</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>