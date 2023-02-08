<%@ page contentType="text/html;charset=UTF-8" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <style>
        body {background-color:  #ffe6ea;}
        h4   {color: #7C5FAB;}
        p    {color: #98E2CA;}
        font-family {"Lucida Sans Unicode", "Lucida Grande", Sans-Serif;}
    </style>
    <title>Login</title>
</head>
<body>
<table class="table_dark"><tr><td> <h1>Login page</h1> </td></tr></table>
<form method="post" action="${pageContext.request.contextPath}/login">
    <table class="table_dark">
        <tr><td>Please, enter your login: <input type="text" name="login" required></td></tr>
        <tr><td>Please, enter your password: <input type="password" name="password" required></td></tr>
        <tr><td><button type="submit">Login</button> </td></tr>
        <tr><td><h4 style="color:#ff0000">${errorMsg}</h4></td></tr>
        <tr><td><h4><a href=""${pageContext.request.contextPath}/register">Register</a> </h4></td></tr>
    </table>
</form>
</body>
</html>
