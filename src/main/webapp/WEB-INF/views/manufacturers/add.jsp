<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add manufacturer</title>
    <style>
        <%@include file="/WEB-INF/css/inputForm.css" %>
        <%@include file="/WEB-INF/css/header.css" %>
    </style>
    <%@include file="/WEB-INF/views/header.jsp" %></head>
<body>
<h1>Add manufacturer</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    <label for="name">Name:</label>
        <input type="text" name="name" id="name"><br>
    <label for="country">Country:</label>
        <input type="text" name="country" id="country"><br>
        <input type="submit" value="Create">
</form>
</body>
</html>
