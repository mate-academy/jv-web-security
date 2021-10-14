<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        <%@include file='/WEB-INF/views/css/common.css'%>
        <%@include file='/WEB-INF/views/css/table-styles.css'%>
    </style>
    <%@include file='/WEB-INF/views/head.html'%>
    <title>Manufacturers</title>
</head>
<body>
    <H1>ALL MANUFACTURERS</H1>
    <table>
        <tr>
            <th>id</th>
            <th>Name</th>
            <th>Country</th>
            <th></th>
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
    <h3><a href="${pageContext.request.contextPath}/manufacturers/add">
        Add new manufacturer</a></h3>
    <h3><a href="${pageContext.request.contextPath}/">Main page</a></h3>
</body>
</html>
