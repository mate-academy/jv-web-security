<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all manufacturers</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        <%@include file='/WEB-INF/views/css/style.css' %>
    </style>
</head>
<body>
<jsp:include page="../index.jsp"/>
<table class="table table-striped">
    <thead>
    <tr>
        <th colspan="4" class="bg-primary text-white text-center">ALL DRIVERS:</th>
    </tr>
    <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>LICENSE NUMBER</th>
        <th>OPERATION</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <th><c:out value="${driver.id}"/></th>
            <td><c:out value="${driver.name}"/></td>
            <td><c:out value="${driver.licenseNumber}"/></td>
            <td>
                <a class="btn btn-warning"
                   href="${pageContext.request.contextPath}/drivers/edit?id=${driver.id}">
                    Edit
                </a>
                <a class="btn btn-danger"
                   href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">
                    Delete
                </a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<br>
<a class="btn btn-primary" href="${pageContext.request.contextPath}/drivers/create">Create new driver</a>
</body>
</html>
