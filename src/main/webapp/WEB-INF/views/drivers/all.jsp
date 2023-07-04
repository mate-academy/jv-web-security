<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers</title>
</head>
<%@include file="../headers/mainHeader.jsp" %>
<body>
<div class="container mt-4 text-center">
    <h1 class="display-5">Drivers</h1>
    <table class="table table-striped-columns text-center">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>License number</th>
            <th>Login</th>
            <th>Deletion</th>
        </tr>
        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td><c:out value="${driver.id}"/></td>
                <td><c:out value="${driver.name}"/></td>
                <td><c:out value="${driver.licenseNumber}"/></td>
                <td><c:out value="${driver.login}"/></td>
                <td>
                    <a
                            href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">DELETE
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
