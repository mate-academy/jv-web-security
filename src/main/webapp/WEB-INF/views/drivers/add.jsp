<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<div class="content">
    <form method="post" id="driver" action="${pageContext.request.contextPath}/drivers/add"></form>
    <h1 class="table_dark">Add driver:</h1>
    <p>Name</p>
    <input type="text" name="name" form="driver" required><br>
    <p>License number</p>
    <input type="text" name="license_number" form="driver" required><br>
    <p>Login</p>
    <input type="text" name="login" form="driver" required><br>
    <p>Password</p>
    <input type="text" name="password" form="driver" required><br>
    <input type="submit" name="add" form="driver">
</div>
</body>
</html>
