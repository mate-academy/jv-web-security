<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
</head>
<body>
<form method="post" id="registration" action="${pageContext.request.contextPath}/drivers/register"></form>
<h1 class="table_dark">Registration</h1>
<table border="1" class="table_dark">
    <tr>
        <td>
            <label for="inputName">NAME</label>
            <input id="inputName" style="float: right" type="text" name="name" form="registration" required>
        </td>
    </tr>
    <tr>
        <td>
            <label for="inputLicense">DRIVER LICENSE</label>
            <input id="inputLicense" style="float: right" type="text" name="driver_license" form="registration" required>
        </td>
    </tr>
    <tr>
        <td>
            <label for="inputLogin">LOGIN</label>
            <input id="inputLogin" style="float: right" type="text" name="login" form="registration" required>
        </td>
    </tr>
    <tr>
        <td>
            <label for="inputPassword">PASSWORD</label>
            <input id="inputPassword" style="float: right" type="password" name="password" form="registration" required>
        </td>
    </tr>
    <tr>
        <td>
            <input type="submit" name="create_account" form="registration">
        </td>
    </tr>
</table>
</body>
</html>
