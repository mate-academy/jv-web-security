<%@ page contentType="text/html;charset=UTF-8" %>
<style>
    <%@include file='/WEB-INF/views/css/body_center.css' %>
</style>
<html>
<head>
    <title>ATMS-Login</title>
</head>
<body class="body_center">
<h4 style="color: red">${errorMsg}</h4>
<h3>Hi, you know what to do</h3>
<table>
<form method="post" action="${pageContext.request.contextPath}/login">
    <tr><td class="value_px">Login </td><td class="value_px"><input type="text" name="login" required></td></tr>
    <tr><td class="value_px">Password </td><td class="value_px"><input type="password" name="password" required></td></tr>
    <tr><td class="value_px"><button type="submit">Login</button></td></tr>
</form></table><br>
<h3>New here?</h3>
<h4 style="color: darkgreen">${successMsg}</h4>
<table>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    <tr><td class="value_px">Login </td><td class="value_px"><input type="text" name="login" required></td></tr>
    <tr><td class="value_px">Password </td><td class="value_px"><input type="password" name="password" required></td></tr>
    <tr><td class="value_px"><button type="submit">Add me plz</button></td></tr>
</form></table>
</body>
</html>
