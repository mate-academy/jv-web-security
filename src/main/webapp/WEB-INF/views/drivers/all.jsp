<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<style>
    <%@include file='/WEB-INF/views/css/body_center.css' %>
</style>
<html>
<head>
    <title>ATMS-drivers</title>
</head>
<body class="body_center">
<%@ include file="/WEB-INF/views/commons/buttonHeader.jsp"%><br>
<h3>Please fill the form to add new driver</h3>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <table>
        <tr><td class="id_px">Driver name <input type="text" name="name" required></td></tr>
        <tr><td class="id_px">License number <input type="text" name="license_number" required></td></tr>
        <tr><td class="id_px">Driver login <input type="text" name="login" required></td></tr>
        <tr><td class="id_px">Driver password <input type="text" name="password" required></td></tr>
        <tr><td><button type="submit">Add driver</button></td></tr>
    </table>
</form>
<h3>List of drivers</h3>
<h4 style="color: darkgreen">Please use Cabinet to manage your account</h4>
<h3 style="color: red">${errorMsg}</h3>
<table>
    <tr>
        <td class="id_px">ID</td>
        <td class="value_px">Name</td>
        <td class="value_px">License number</td>
        <td class="value_px">Login</td>
    </tr><tr></tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td class="id_px"><c:out value="${driver.id}" /></td>
            <td class="value_px"><c:out value="${driver.name}" /></td>
            <td class="value_px"><c:out value="${driver.licenseNumber}" /></td>
            <td class="value_px"><c:out value="${driver.login}" /></td>
            <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">
                <input type="button" value="DELETE"></a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
