
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h4 style="color:red;">${message}</h4>
<h1>Log in</h1>
<form action="${pageContext.request.contextPath}/login" method="post" >
    <h1>Enter login: </h1>
    <input type="text" name="login" id="login" required>
    <h2>Enter password: </h2>
        <input type="password" name="password" id="password" required>
        <input type="submit" value="Enter!">
</form>
</body>
</html>
