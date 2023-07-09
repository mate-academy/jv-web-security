<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Add driver to car</title>
</head>
<body>
<%@include file="/WEB-INF/views/header.jsp"%>
<div class="display-div">
    <div>
        <h2>Add driver to car</h2>
        <form method="post" action="${pageContext.request.contextPath}/cars/drivers/add">
            Car ID <input class="text-field_input" type="text" name="car_id"><br>
            Driver ID <input class="text-field_input" type="text" name="driver_id"><br>
            <button class="button-confirm" type="submit">Confirm</button>
        </form>
    </div>
</div>
</body>
</html>
