<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/add.css' %>
</style>
<jsp:include page="/WEB-INF/views/index.jsp"/>
<html>
<head>
    <title>Add driver</title>
</head>
<body>
<div class="container">
    <h1>Add driver</h1>
    <h4 style="color:red">${errorMsg}</h4>
    <form method="POST" action="${pageContext.request.contextPath}/drivers/add">
        <label for="login">Input login:</label>
        <br>
        <input type="text" name="login" id="login">
        <br><br>
        <label for="password">Input password:</label>
        <br>
        <input type="password" name="password" id="password">
        <br><br>
        <label for="password_repeat">Repeat password:</label>
        <br>
        <input type="password" name="password_repeat" id="password_repeat">
        <br><br>
        <label for="name">Input name:</label>
        <br>
        <input type="text" name="name" id="name">
        <br><br>
        <label for="license_number">Input license number:</label>
        <br>
        <input type="text" name="license_number" id="license_number">
        <br><br>
        <button type="submit">Register</button>
    </form>
</div>
</body>
</html>
