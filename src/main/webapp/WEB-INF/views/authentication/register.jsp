<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
</head>
<body>
<h1>Register page</h1>
<h4 style="color:red">${errorMsg}</h4
<h1>Please, fill the form below</h1>
<form method="post" action="${pageContext.request.contextPath}/register">
    Enter your name <input type="text" name="driver_name" required><br>
    Enter license number <input type="text" name="license" required><br>
    Enter your login <input type="text" name="driver_login" required><br>
    Enter your password <input type="password" name="driver_password" required><br>
    Repeat your password <input type="password" name="password_repeat" required><br>
    <button type="submit">Confirm</button>
</form>
</body>
</html>
