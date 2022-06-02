<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Login Page</h1>
<form method="post" action="${pageContext.request.contextPath}/login">
    <h4 style="color:red">${errorMsg}</h4>
    <label for="login">Login</label><br>
    <input type="text" id="login" name="login"><br>
    <label for="password">Password</label><br>
    <input type="password" id="password" name="password"><br><br>
    <input type="submit" value="Submit">
    <input type="reset" value="Reset">
</form>
<h4><a href="${pageContext.request.contextPath}/drivers/add">Create driver</a></h4>
</body>
</html>
