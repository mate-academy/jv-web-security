<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>Login for my team</title>
</head>
<br>
<h1 class="table_dark">Hello, driver</h1>
<h4  style="color:red">${errorMsg}</h4>
<form method="post" class="table_dark action="${pageContext.request.contextPath}/login">
    <th>Please type your login:</th>
    <th><input type="text" name="login" required></th><br>
    <th> Please type your password: </th>
    <input type="password" name="password" required>
    <button type="submit">LOGIN</button>
</form>
    <br></br>
    <h7 class="table_dark">If you are not registered please do so...</h7>
    <h6 class="table_dark"><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h6>
</body>
</html>
