<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Add Car Menu</title>
    </head>
    <body>
        <%@include file="/WEB-INF/views/header.jsp"%>
        <form method="post" action="${pageContext.request.contextPath}/cars/add">
            <h3> Model</h3>
            <input type="text" name="model">
            <br>
            <h3>Manufacturer</h3>
            <c:forEach var="manufacturer" items="${manufacturers}">
                <input type="radio" name="manufacturer_id" value="<c:out value='${manufacturer.id}' />">${manufacturer.name}
            </c:forEach>
            <br>
            <button type="submit">Create</button>
        </form>
    </body>
</html>
