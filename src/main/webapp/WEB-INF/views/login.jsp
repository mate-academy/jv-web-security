<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login page</title>
</head>
<body>
<%@include file='/WEB-INF/views/header.jsp' %>
<h4 style="color: red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    <input placeholder="login" type="text" name="login">
    <input placeholder="password" type="password" name="password">
    <button type="submit">Login</button>
</form>
</body>
</html>
