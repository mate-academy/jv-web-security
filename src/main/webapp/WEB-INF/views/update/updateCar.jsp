<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
      <title>Add Driver Menu</title>
    </head>
    <body>
        <%@include file="/WEB-INF/views/header.jsp"%>
        <form method="post" action="${pageContext.request.contextPath}/cars/update">
            <h3> ID</h3>
            <input type="text" name="id" value="${car.id}" readonly>
            <br>
            <h3> Model</h3>
            <input type="text" name="model" value="${car.model}">
            <br>
            <h3>Manufacturer</h3>
            <c:forEach var="manufacturer" items="${manufacturers}">
              <input type="radio" name="manufacturer_id" value="<c:out value='${manufacturer.id}' />"
                <c:if test = "${car.manufacturer.id == manufacturer.id}">
                   checked
                </c:if>>${manufacturer.name}
            </c:forEach>
            <br>
            <button type="submit">Update</button>
        </form>
    </body>
</html>
