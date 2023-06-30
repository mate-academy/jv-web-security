<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<form method="post" id="driver" action="${pageContext.request.contextPath}/register"></form>
<h1 class="table_dark">Register page:</h1>
<table border="1" class="table_dark">
  <tr>
    <th>Name</th>
    <th>License number</th>
    <th>Login</th>
    <th>Password</th>
    <th>Confirm</th>
  </tr>
  <tr>
    <td>
      <input type="text" name="name" form="driver" required>
    </td>
    <td>
      <input type="text" name="license_number" form="driver" required>
    </td>
    <td>
      <input type="text" name="login" form="driver" required>
    </td>
    <td>
      <input type="password" name="password" form="driver" required>
    </td>
    <td>
      <input type="submit" name="Confirm" form="driver">
    </td>
  </tr>
</table>
</body>
</html>