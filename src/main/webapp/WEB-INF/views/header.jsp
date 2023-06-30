<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="${pageContext.request.contextPath}/index">
  <input type="submit" value="Home" />
</form>

<form action="${pageContext.request.contextPath}/logout">
  <input type="submit" value="Logout" />
</form>

</body>
</html>
