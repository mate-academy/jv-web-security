<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<%@ include file="/WEB-INF/views/navigationBar.jsp"%>
<div style="font-family: arial,serif;
float: left; display: inline-block;
background: url('https://i2.paste.pics/N2F82.png')
no-repeat; width: 1466px; height: 674px">
<h1 class="table_dark">Drivers:</h1>
<table border="1" class="table_dark">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Login</th>
        <th>License number</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="driver" items="${drivers}">
        <tr>
            <td>
                <c:out value="${driver.id}"/>
            </td>
            <td>
                <c:out value="${driver.name}"/>
            </td>
            <td>
                <c:out value="${driver.login}"/>
            </td>
            <td>
                <c:out value="${driver.licenseNumber}"/>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">DELETE</a>
            </td>
        </tr>
    </c:forEach>
</table>
    <%@include file='/WEB-INF/views/footer.jsp' %>
</div>
</body>
</html>
