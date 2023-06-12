<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login page</title>
    <style>
        <%@include file="/WEB-INF/css/inputForm.css" %>
        <%@include file="/WEB-INF/css/header.css" %>
    </style>
    <%@include file="/WEB-INF/views/header.jsp" %>
</head>
<body>
<h1>Login</h1>
<% if (request.getAttribute("errorMessage") != null) { %>
<p class="merror"><%= request.getAttribute("errorMessage") %></p>
<% } %>
<form action="${pageContext.request.contextPath}/login" method="post">
    Username: <input type="text" name="login"><br>
    Password: <input type="password" name="password"><br>
    <input type="submit" value="Login">
</form>
</body>
</html>