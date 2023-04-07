<jsp:useBean id="errorMsg" scope="request" type=""/>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Login Page</h1>
<h4 style="collor: red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contextPath}/login">
    Please enter your login: <label>
    <input type="text" name="login" required>
</label>
    Please enter your password: <label>
    <input type="password" name="password" required>
</label>
    <button type="submit">Login</button>
</form>
<h4><a href="${pageContext.request.contextPath}/drivers/add">Create new Driver</a></h4>
</body>
</html>
