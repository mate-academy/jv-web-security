<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h4 style="color:red">${errorMsg}</h4>
    <form method="post" action="/login">
      Login <input type="text" name="login" required>
      Password <input type="password" name="password" required>
      <button type="submit">Login</button>
    </form>
</body>
</html>
