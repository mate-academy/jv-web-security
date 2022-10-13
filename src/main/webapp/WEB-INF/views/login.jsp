<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Authorization page</h1>
<h4 style="color: red">${errorMsg}</h4>
<form action="${pageContext.request.contextPath}/login" method="post" class="form-example">
    <div class="form-example">
        <label for="login">Enter login: </label>
        <input type="text" name="login" id="login" required>
    </div>
    <div class="form-example">
        <label for="password">Enter password: </label>
        <input type="password" name="password" id="password" required>
    </div>
    <div class="form-example">
        <input type="submit" value="Login">
    </div>
</form>
<h4> <a href="${pageContext.request.contextPath}/drivers/add">Registration</a> </h4>
</body>
</html>
