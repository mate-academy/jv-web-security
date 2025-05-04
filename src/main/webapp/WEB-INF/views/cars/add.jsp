<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/style.css' %>
</style>
<html>
<head>
    <title>Add car</title>
</head>
<body>
<%@include file="/WEB-INF/views/header.jsp"%>
<div class="display-div">
    <div>
        <h2>Add car</h2>
        <form method="post" action="${pageContext.request.contextPath}/cars/add">
            Model <input class="text-field_input" type="text" name="model"><br>
            Manufacturer ID <input class="text-field_input" type="text" name="manufacturer_id"><br>
            <button class="button-confirm" type="submit">Confirm</button>
        </form>
    </div>
</div>
</body>
</html>
