<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style><%@include file="/WEB-INF/styles.css"%></style>
<html>
    <head>
        <title>All Manufacturers</title>
    </head>
    <body>
        <%@include file="/WEB-INF/views/header.jsp"%>
        <table>
            <tr>
                <td>ID</td>
                <td>NAME</td>
                <td>COUNTRY</td>
                <td></td>
                <td></td>
            </tr>
            <c:forEach items="${manufacturers}" var="manufacturer">
                <tr>
                    <td><c:out value="${manufacturer.id};"/></td>
                    <td><c:out value="${manufacturer.name};"/></td>
                    <td><c:out value="${manufacturer.country};"/></td>
                    <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.id}">Delete</a></td>
                    <td><a href="${pageContext.request.contextPath}/manufacturers/update?id=${manufacturer.id}">Update</a></td>
                </tr>
            </c:forEach>
        </table>
        <br>
        <button>
            <a href="/manufacturers/add">Add</a>
        </button>
    </body>
</html>
