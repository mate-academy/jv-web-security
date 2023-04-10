<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/all.css' %>
</style>
<jsp:include page="/WEB-INF/views/index.jsp"/>
<html>
<head>
    <title>Display all drivers</title>
</head>
<body>
<button style="background-color: #808080; color: #fff;"
        onclick="window.location.href='${pageContext.request.contextPath}/cars'">
    Back to list of all cars
</button>
<div class="container">
    <h1>List of drivers by car with id ${id}</h1>
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>DRIVER LICENSE</th>
            <th>LOGIN</th>
            <th></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td><c:out value="${driver.id}"/></td>
                <td><c:out value="${driver.name}"/></td>
                <td><c:out value="${driver.licenseNumber}"/></td>
                <td><c:out value="${driver.login}"/></td>
                <td>
                    <form action="${pageContext.request.contextPath}/cars/drivers/remove" method="POST">
                        <input type="hidden" name="driver_id" value="${driver.id}"/>
                        <input type="hidden" name="car_id" value="${id}"/>
                        <button type="submit">Remove</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <form action="${pageContext.request.contextPath}/cars/drivers/add" method="POST">
        <input type="hidden" name="car_id" value="${id}"/>
        <label for="driver_id">Input driver id</label>
        <input type="text" id="driver_id" name="driver_id">
        <button type="submit">Add</button>
    </form>
</div>
</body>
</html>
