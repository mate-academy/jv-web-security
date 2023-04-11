<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>Drivers</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
          crossorigin="anonymous">
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
            crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="/WEB-INF/views/navbar.jsp" />
<div class="container">
    <h1>Drivers list:</h1>
    <table class="table table-bordered">
        <tr>
            <th class="text-center">ID</th>
            <th class="text-center">Name</th>
            <th class="text-center">License number</th>
            <th class="text-center">Delete</th>
        </tr>
        <c:forEach var="driver" items="${drivers}">
            <tr>
                <td class="text-center align-middle">
                    <c:out value="${driver.id}"/>
                </td>
                <td class="text-center align-middle">
                    <c:out value="${driver.name}"/>
                </td>
                <td class="text-center align-middle">
                    <c:out value="${driver.licenseNumber}"/>
                </td>
                <td class="text-center align-middle">
                    <a class="btn btn-outline-danger" href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}" role="button">DELETE</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>

