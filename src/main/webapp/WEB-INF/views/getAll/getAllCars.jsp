<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style><%@include file="/WEB-INF/styles.css"%></style>
<html>
    <head>
        <title>All Cars</title>
    </head>
    <body>
        <%@include file="/WEB-INF/views/header.jsp"%>
        <table>
            <tr>
                <td>ID</td>
                <td>Model</td>
                <td>Manufacturer</td>
                <td>Driver Names</td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <c:forEach items="${cars}" var="car">
                <tr>
                    <td><c:out value="${car.id};"/></td>
                    <td><c:out value="${car.model};"/></td>
                    <td><c:out value="${car.manufacturer.name};"/></td>
                    <td>
                        <c:forEach items="${car.drivers}" var="driver">
                            <c:out value="${driver.name};"/>
                        </c:forEach>
                    </td>
                    <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.id}">Delete</a></td>
                    <td><a href="${pageContext.request.contextPath}/cars/update?id=${car.id}">Update</a></td>
                    <td><a href="${pageContext.request.contextPath}/cars/drivers/add?id=${car.id}">Add Drivers to Car</a></td>
                    <td><a href="${pageContext.request.contextPath}/cars/drivers/delete?id=${car.id}">Delete Drivers From Car</a></td>
                </tr>
            </c:forEach>
        </table>
        <button>
            <a href="/cars/add">Add</a>
        </button>
    </body>
</html>
