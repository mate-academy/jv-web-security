<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        <%@include file='/WEB-INF/views/css/common.css'%>
    </style>
    <%@include file='/WEB-INF/views/head.html'%>
    <title>Login page</title>
</head>
<body>
<h2>For Authentication you should fill in the forms below</h2>
<h3 style="color: red">${errorMsg}</h3>
    <form method="post" action="${pageContext.request.contextPath}/login">
        <label>Enter login</label><br>
        <input type="text" name="login"><br>
        <label>Enter password</label><br>
        <input type="text" name="password"><br><br>
        <button type="submit">Login</button>
    </form>
    <H3><a href="${pageContext.request.contextPath}/drivers/add">Registration</a></H3>
</body>
</html>
