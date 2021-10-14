<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        <%@include file='/WEB-INF/views/css/common.css'%>
        <%@include file='/WEB-INF/views/css/table-styles.css'%>
    </style>
    <%@include file='/WEB-INF/views/head.html'%>
    <title>Drivers</title>
</head>
<body>
    <H1>ALL DRIVERS</H1>
    <table>
        <tr>
            <th>id</th>
            <th>Name</th>
            <th>Login</th>
            <th>LicenseNumber</th>
            <th></th>
        </tr>
        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td><c:out value="${driver.id}"/></td>
                <td><c:out value="${driver.name}"/></td>
                <td><c:out value="${driver.login}"/></td>
                <td><c:out value="${driver.licenseNumber}"/></td>
                <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">
                    delete this Driver
                </a></td>
            </tr>
        </c:forEach>
    </table>
    <h3><a href="${pageContext.request.contextPath}/drivers/add">Add new driver</a></h3>
    <h3><a href="${pageContext.request.contextPath}/">Main page</a></h3>
</body>
</html>
