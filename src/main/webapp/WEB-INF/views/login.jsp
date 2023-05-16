<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Log In</title>
</head>
<body>
<h3>Login User:</h3>
<form method="post" id="driver" action="${pageContext.request.contextPath}/login"></form>
<table>
    <tr>
        <th>Username</th>
        <th>Password</th>
    </tr>
    <tr>
        <td>
            <input class="input-group-text" type="text" name="username" form="driver" required>
        </td>
        <td>
            <input class="input-group-text" type="text" name="password" form="driver" required>
        </td>
        <td>
            <input class="btn btn-primary" type="submit" value="Log In" name="Login" form="driver">
        </td>
    </tr>
    <h4 style="color:red">${errorMsg}</h4>
</table>
<h3>If you here for the firs time, you can register new user :)</h3>
<a href="${pageContext.request.contextPath}/register">
    <input class="btn btn-primary" type="button" value="Register new user"/>
</a>
</body>
</html>
<style>
    form, h3, a {
        position: center;
        margin: auto;
    }
</style>