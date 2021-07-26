<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
</head>
<body>
    <h1>Registration Page</h1>
    <form method="post" action="${pageContext.request.contextPath}/registration">
        Please enter your name: <input type="text" name="name" required><br>
        Please enter your license_number: <input type="text" name="license_number" required><br>
        Please enter your login: <input type="text" name="login" required><br>
        Please enter your password: <input type="password" name="password" required><br>
        <button type="submit">Registration</button><br>
    </form>
</body>
</html>
