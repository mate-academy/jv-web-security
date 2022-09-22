<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
    <%@include file='/WEB-INF/views/css/header_style.css' %>
</style>
<head>
    <title>Cab Service</title>
    <%@include file="non_authenticated_header.jsp" %>
</head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/WEB-INF/views/css/header_style.css"/>
<body>
<div class="table_dark"><h1>Log in</h1></div>
<div class="table_dark">
    <form method="post" action="${pageContext.request.contextPath}/login">
        Login:
        <br>
        <label><input type="text" name="login" required></label><br>
        Password:
        <br><label><input type="password" name="password" required></label><br>
        <h4 style="color: red">${error}</h4>
        <br>
        <button type="submit">Confirm</button>
    </form>
</div>
</body>
</html>
