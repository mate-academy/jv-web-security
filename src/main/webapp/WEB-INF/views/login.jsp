<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Login page</h1>
<h4 style="color:red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    Enter login <input type="text" name="login" required>
    Enter password <input type="password" name="password" required>
    <button type="submit">Login</button>
</form>
<form action="drivers/add"><button>REGISTER</button></form>
</body>
</html>
