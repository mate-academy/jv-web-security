<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Login Page</h1>
<h4 style="color: red">${errorMsg}</h4>
<form method="post" action="${pageContext.request.contexPage}/login">
  Please enter your login: <input type="text" name="login" required>
  Please enter your password: <input type="text" name="password" required>
  <button type="submit">login</button>
</form>
<h4><a href="${pageContext.requet.contexPath}/src/main/java/taxi/controller/driver/AddDriverController.java">Register</a> </h4>
</body>
</html>
