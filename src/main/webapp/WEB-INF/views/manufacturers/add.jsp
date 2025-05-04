<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/style.css' %>
</style>
<html>
<head>
    <title>Manufacturers</title>
</head>
<body>
<%@include file="/WEB-INF/views/header.jsp"%>
<div class="display-div">
    <div>
        <h2>Add manufacturer</h2>
        <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
            Name <input class="text-field_input" type="text" name="name"><br>
            Country <input class="text-field_input" type="text" name="country"><br>
            <button class="button-confirm" type="submit">Confirm</button>
        </form>
    </div>
</div>
</body>
</html>
