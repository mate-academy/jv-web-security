<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all manufacturers</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
        body {
            padding: 20px;
        }
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>
