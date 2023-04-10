<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/add.css' %>
</style>
<jsp:include page="/WEB-INF/views/index.jsp" />
<html>
<head>
    <title>Add car</title>
</head>
<body>
<div class="container">
    <h1>Fill the form to create the car</h1>
    <form method="post" action="${pageContext.request.contextPath}/cars/add">
        <label for="model">Model</label>
        <input type="text" id="model" name="model">
        <label>Choose manufacturer:</label>
        <select name="manufacturer_id">
            <c:forEach items="${manufacturers}" var="manufacturer">
                <option value="${manufacturer.id}"><c:out value="${manufacturer.name}"/></option>
            </c:forEach>
        </select>
        <button type="submit">Create</button>
    </form>
    </div>
</body>
</html>
