<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/page_style.css' %>
</style>
<html>
<head>
    <title>Taxi service</title>
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
        <h1>Home Page</h1>
        <p>Your ad could be here :D</p>
    </section>
</main>
</body>
</html>
