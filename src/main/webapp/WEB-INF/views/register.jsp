<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Register</title>
  <style>
    body {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }
  </style>
</head>
<body>
<div style="margin: auto; width: 20%;">
<h1>Registration</h1>
<form method="post" action="${pageContext.request.contextPath}/register">
  Please, enter your name: <input type="text" name="name" required> <br>
  Please, enter your license number: <input type="text" name="licenseNumber" required><br>
  <br><br>
  Please, enter your login: <input type="text" name="login" required> <br>
  Please, enter your password: <input type="password" name="password" required><br>
  Please, repeat password: <input type="password" name="repeatPassword" required><br>
  <button type="submit" style="margin-left: 60px;">Register</button>
</form>
  <h4 style="color:red">${errorMsg}</h4>
</div>
</body>
</html>