<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h4><span style="color: red">${errMessage}</span></h4>
<form method="post" action="${pageContext.request.contextPath}/login">
  Please enter login: <input type="text" name="login" required>
  Please enter password: <input type="password" name="password" required>
  <button type="submit">Login</button>
</form>
<h4><a href="${pageContext.request.contextPath}/drivers/add">Register</a> </h4>
</body>
</html>
