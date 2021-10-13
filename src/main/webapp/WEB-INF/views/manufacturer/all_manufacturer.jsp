<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        <%@include file='/WEB-INF/views/css/background-styles.css'%>
        <%@include file='/WEB-INF/views/css/table-styles.css'%>
    </style>
    <title>Manufacturers</title>
</head>
<body>
    <H1>ALL MANUFACTURERS</H1>
    <table>
        <tr>
            <td>id</td>
            <td>Name</td>
            <td>Country</td>
        </tr>
        <c:forEach items="${manufacturers}" var="manufacturer">
            <tr>
                <td><c:out value="${manufacturer.id}"/></td>
                <td><c:out value="${manufacturer.name}"/></td>
                <td><c:out value="${manufacturer.country}"/></td>
                <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id
                =${manufacturer.id}">
                    delete this Manufacturer
                </a></td>
            </tr>
        </c:forEach>
    </table>
    <a href="${pageContext.request.contextPath}/manufacturers/add">Add new manufacturer</a><br>
    <a href="${pageContext.request.contextPath}/">Go to main page</a><br>
</body>
</html>
