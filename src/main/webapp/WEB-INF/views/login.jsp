<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<title>Login</title>
<style>
    html * {
        font-size: 16px;
        line-height: 1.625;
        color: #000000;
        font-family: Nunito, sans-serif;
    }
</style>
</head>
<body bgcolor="#ffd700">
<div align="center ">
<form method="post" action="${pageContext.request.contextPath}/login">
    <h1>TAXI SERVICE APP</h1>
    <h3>Please enter the form below</h3>
        <td>Login <input type="text" name="login" required></td>
        <td>Password <input type="password" name="password" required></td>
        <td><button type="submit">Confirm</button></td>
        <td><button type="button"><a href="${pageContext.request.contextPath}/drivers/add">Register</a></button> </td>
        <td><h4 style="color: red">${errorMsg}</h4></td>

</form>
</div>
</body>
</html>
