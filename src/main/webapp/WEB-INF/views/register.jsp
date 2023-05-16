<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Register new user</title>
</head>
<body>
<h3>Register User:</h3>
<form method="post" id="driver" action="${pageContext.request.contextPath}/register"></form>
<table>
    <tr>
        <th>Name</th>
        <th>License number</th>
        <th>Username</th>
        <th>Password</th>
    </tr>
    <tr>
        <td>
            <input class="input-group-text" type="text" name="name" form="driver" required>
        </td>
        <td>
            <input class="input-group-text" type="text" name="license_number" form="driver" required>
        </td>
        <td>
            <input class="input-group-text" type="text" name="username" form="driver" required>
        </td>
        <td>
            <input class="input-group-text" type="text" name="password" form="driver" required>
        </td>
        <td>
            <input class="btn btn-primary" type="submit" value="Register" name="Register" form="driver">
        </td>
    </tr>
    <h4 style="color:red">${errorMsg}</h4>
</table>
<a href="${pageContext.request.contextPath}/login">
    <input class="btn btn-primary" type="button" value="Login to account"/>
</a>
</body>
</html>
