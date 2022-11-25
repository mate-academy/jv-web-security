<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<form method="post" action="${pageContext.request.contextPath}/login">
<h1 class="table_dark">Login page</h1>
    <h4 style="color:orangered">${errorMessage}</h4>
Please enter your login: <input type="text" name="login" required>
Please enter your password: <input type="password" name="password" required>
<button type="submit">Login</button>
</form>
<h4><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h4>
</body>
</html>
