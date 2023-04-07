<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/body_center.css' %>
</style>
<html>
<head>
    <title>ATMS-drivers</title>
</head>
<body class="body_center">
<%@ include file="/WEB-INF/views/commons/buttonHeader.jsp"%><br>
<a href="${pageContext.request.contextPath}/index">
    <input type="button" value="My Data Manager"></a>
<%--<h3>To add new driver please fill the form:</h3><br>--%>
<%--<form method="post" action="${pageContext.request.contextPath}/drivers/create">--%>
<%--    Login <input type="text" name="login" required><br>--%>
<%--    Login <input type="password" name="password" required><br>--%>
<%--    <button type="submit">Add driver</button>--%>
<%--</form><br>--%>
<h3>List of drivers</h3>
<table>
    <tr>
        <td>ID</td>
        <td>Name</td>
        <td>License number</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
            <td><c:out value="${driver.login}" /></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">
                <input type="button" value="DELETE"></a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
