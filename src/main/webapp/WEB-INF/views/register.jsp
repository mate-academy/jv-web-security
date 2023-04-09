<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Register page</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/WEB-INF/views/css/table_dark.css">
</head>
<body class="body_dark">
<div class="form_dark">
  <h1>Register page</h1>
  <h4 style="color: red">${errorMsg}</h4>
  <form method="POST" action="${pageContext.request.contextPath}/register">
    <label>Name:</label><br>
    <input type="text" name="name" required><br><br>
    <label>Licence number:</label><br>
    <input type="text" name="license_number" required><br><br>
    <label>Login:</label><br>
    <input type="text" name="login" required><br><br>
    <label>Password:</label><br>
    <input type="password" name="password" required><br><br>
    <button class="submit_dark" type="submit">Enter</button>
  </form>
</div>
</body>
</html>
