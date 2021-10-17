<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<title>
    <h1>Login</h1>
</title>
<body style = "color: #8282DAFF">
<h1>Login Page</h1>
<form class="table_dark" method="post" action="${pageContext.request.contextPath}/login">
    Login <input type="text" name="login">
    Password <input type="password" name="password">
    <button type="submit">Confirm</button>
    <h4 style="color:red">${errorMsg}</h4>
</form>
</body>
</html>