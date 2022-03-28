<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
    <%@include file='/WEB-INF/views/css/page_style.css' %>
</style>
<html>
<head>
    <title>All manufacturers</title>
</head>
<body class="page_style">
<header>
    <nav>
        <h1>Меню</h1>
        <ul>
            <li><a href="${pageContext.request.contextPath}/drivers">Display All Drivers</a></li>
            <li><a href="${pageContext.request.contextPath}/cars">Display All Cars</a></li>
            <li><a href="${pageContext.request.contextPath}/manufacturers">Display All Manufacturers</a></li>
            <li><a href="${pageContext.request.contextPath}/drivers/add">Create new Driver</a></li>
            <li><a href="${pageContext.request.contextPath}/cars/add">Create new Car</a></li>
            <li><a href="${pageContext.request.contextPath}/manufacturers/add">Create new Manufacturer</a></li>
            <li><a href="${pageContext.request.contextPath}/cars/drivers/add">Add Driver to Car</a></li>
            <li><a href="${pageContext.request.contextPath}/drivers/get_current_cars">Get my current cars</a></li>
            <li><p><a href="${pageContext.request.contextPath}/logout">Logout</a></p></li>
        </ul>
    </nav>
</header>
<main>
    <section>
        <h1 class="table_dark">All manufacturers:</h1>
        <table border="1" class="table_dark">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Country</th>
                <th>Delete</th>
            </tr>
            <c:forEach var="manufacturer" items="${manufacturers}">
                <tr>
                    <td>
                        <c:out value="${manufacturer.id}"/>
                    </td>
                    <td>
                        <c:out value="${manufacturer.name}"/>
                    </td>
                    <td>
                        <c:out value="${manufacturer.country}"/>
                    </td>
                    <td>
                        <a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">DELETE</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </section>
</main>
</body>
</html>
