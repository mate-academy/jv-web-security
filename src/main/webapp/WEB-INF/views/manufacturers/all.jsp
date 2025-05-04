<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all manufacturers</title>
    <style>
        <%@include file='/WEB-INF/views/css/bootstrap.min.css' %>
        <%@include file='/WEB-INF/views/css/style.css' %>
    </style>
</head>
<body>
<jsp:include page="../index.jsp"/>
<table class="table table-striped">
    <thead>
        <tr>
            <th colspan="4" class="bg-primary text-white text-center">ALL MANUFACTURERS:</th>
        </tr>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>COUNTRY</th>
            <th>OPERATION</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${manufacturers}" var="manufacturer">
            <tr>
                <th><c:out value="${manufacturer.id}"/></th>
                <td><c:out value="${manufacturer.name}"/></td>
                <td><c:out value="${manufacturer.country}"/></td>
                <td>
                    <a class="btn btn-warning"
                       href="${pageContext.request.contextPath}/manufacturers/edit?id=${manufacturer.id}">
                        Edit
                    </a>
                    <a class="btn btn-danger"
                            href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">
                        Delete
                    </a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
<br>
<a class="btn btn-primary" href="${pageContext.request.contextPath}/manufacturers/create">Create new manufacturer</a>
</body>
</html>
