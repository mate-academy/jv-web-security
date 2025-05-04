<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/add.css' %>
</style>
<jsp:include page="/WEB-INF/views/index.jsp" />
<html>
<head>
    <title>Manufacturers</title>
</head>
<body>
<div class="container">
<h1 class="table_dark">Add manufacturer:</h1>
    <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
        <label for="name">Name</label>
        <input type="text" id="name" name="name">
        <label for="name">License number</label>
        <input type="text" id="country" name="country">
        <button type="submit">Create</button>
    </form>
    </div>
</body>
</html>
