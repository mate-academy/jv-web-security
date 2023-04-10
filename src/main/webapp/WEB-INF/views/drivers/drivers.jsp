<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers</title>
</head>
<body>
    <h1>List of drivers!</h1>
    <%@include file="/WEB-INF/views/header.jsp"%><br>
    <table>
        <tr>
            <td>ID</td>
            <td>NAME</td>
            <td>LICENSE</td>
            <td>LOGIN</td>
        </tr>
        <c:forEach items="${drivers}" var="driver">
            <tr>
                <td><c:out value="${driver.id}" /></td>
                <td><c:out value="${driver.name}" /></td>
                <td><c:out value="${driver.licenseNumber}" /></td>
                <td><c:out value="${driver.login}" /></td>
                <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">
                    <input type="button" value="Delete Driver"></a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
