<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style><%@include file="/WEB-INF/styles.css"%></style>
<html>
    <head>
        <title>All Drivers</title>
    </head>
    <body>
        <%@include file="/WEB-INF/views/header.jsp"%>
        <table>
            <tr>
                <td>ID</td>
                <td>NAME</td>
                <td>LICENSE_NUMBER</td>
                <td></td>
                <td></td>
            </tr>
            <c:forEach items="${drivers}" var="driver">
                <tr>
                    <td><c:out value="${driver.id};"/></td>
                    <td><c:out value="${driver.name};"/></td>
                    <td><c:out value="${driver.licenseNumber};"/></td>
                    <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">Delete</a></td>
                    <td><a href="${pageContext.request.contextPath}/drivers/update?id=${driver.id}">Update</a></td>
                </tr>
            </c:forEach>
        </table>
        <br>
        <button>
            <a href="/drivers/add">Add</a>
        </button>
    </body>
</html>
