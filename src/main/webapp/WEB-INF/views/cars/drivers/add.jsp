<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/index.jsp"/>
<div class="formStyle">
    <form method="post" id="car" action="${pageContext.request.contextPath}/cars/drivers/add">
        <div class="formTitle">Car id</div>
        <div class="formTitle">
            <input type="number" name="car_id" form="car" required>
        </div>
        <div class="formTitle">Driver id</div>
        <div class="formTitle">
            <input type="number" name="driver_id" form="car" required></br>
        </div>
        <div class="formTitle">
            <input type="submit" name="add" form="car">
        </div>
    </form>
</div>
</body>
</html>