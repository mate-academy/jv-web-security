<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Add Manufacturer Menu</title>
    </head>
    <body>
    <%@include file="/WEB-INF/views/header.jsp"%>
        <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
            <h3>Name</h3>
            <input type="text" name="name">
            <br>
            <h3>Country</h3>
            <input type="text" name="country">
            <br>
            <button type="submit">Create</button>
        </form>
    </body>
</html>
