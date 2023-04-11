<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Display all drivers</title>
    <style>
        <%@include file="/WEB-INF/css/table.css" %>
        <%@include file="/WEB-INF/css/header.css" %>
    </style>
    <%@include file="/WEB-INF/views/header.jsp" %></head>
<body>

<table class="tg">
    <thead>
    <tr>
        <th class="tg-4n5g">Id</th>
        <th class="tg-4n5g">Name</th>
        <th class="tg-4n5g">Licence number</th>
        <th class="tg-4n5g">Login</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td class="tg-0lax"><c:out value="${driver.id}"/></td>
            <td class="tg-0lax"><c:out value="${driver.name}"/></td>
            <td class="tg-0lax"><c:out value="${driver.licenseNumber}"/></td>
            <td class="tg-0lax"><c:out value="${driver.login}"/></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
