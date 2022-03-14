<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Driver authentication</title>
</head>
<body>
<h1>Input login and password :</h1>
<h4 style="color:red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    DRIVER LOGIN <input type="text" name="login" required>
    DRIVER PASSWORD <input type="password" name="password" required>
    <button type="submit">Login</button>
</form>
</body>
</html>
