<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1 class="table_dark">Create account:</h1>
<form method="post" id="driver" action="${pageContext.request.contextPath}/registration">
    Name: <input type="text" name="name" required>
    License Number: <input type="text" name="license_number" required>
    Login: <input type="text" name="login" required>
    Password: <input type="password" name="password" required>
    <button type="submit">Login</button>
</form>
</body>
</html>
