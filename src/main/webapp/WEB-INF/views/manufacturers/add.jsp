<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
    <%@include file='/WEB-INF/views/css/page_style.css' %>
</style>
<html>
<head>
    <title>Manufacturers</title>
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
        </ul>
    </nav>
</header>
<main>
    <section>
        <form method="post" id="manufacturer" action="${pageContext.request.contextPath}/manufacturers/add"></form>
        <h1 class="table_dark">Add manufacturer:</h1>
        <table border="1" class="table_dark">
            <tr>
                <th>Name</th>
                <th>Country</th>
                <th>Add</th>
            </tr>
            <tr>
                <td>
                    <input type="text" name="name" form="manufacturer" required>
                </td>
                <td>
                    <input type="text" name="country" form="manufacturer" required>
                </td>
                <td>
                    <input type="submit" name="add" form="manufacturer" required>
                </td>
            </tr>
        </table>
    </section>
</main>
</body>
</html>
