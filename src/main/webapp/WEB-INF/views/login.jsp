<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h4 style="color: red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    Enter your login: <input type="text" name="login" required><br>
    Enter your password: <input type="password" name="password" required><br>
    <button type="submit">Login</button>
</form>
<h3><a href="${pageContext.request.contextPath}/drivers/add">Register driver</a> </h3>
</body>
</html>
