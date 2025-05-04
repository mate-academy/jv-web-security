<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Drivers creation</title>
</head>
<body>
  <h1>Drivers Registration Form!</h1>
  <form method="post" action="${pageContext.request.contextPath}/register">
    Name <input type="text" name="name"><br>
    License Number <input type="text" name="licenseNumber"><br>
    Login <input type="text" name="login"><br>
    Password <input type="password" name="password"><br>
    <button type="submit">Confirm</button>
  </form>
</body>
</html>
