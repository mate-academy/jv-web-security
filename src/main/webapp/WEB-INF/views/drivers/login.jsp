<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Authentication</title>
</head>
<body>
<h1 align="center" >Driver authentication</h1>
<h3>${errorMessage}</h3>
<form method="post" action="${pageContext.request.contextPath}/login">
    <table align="center">
        <tr>
            <td>login</td>
            <td><input type="text" name="login"></td>
        </tr>
        <tr>
            <td>password</td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td><button type="submit">Confirm</button></td>
            <td align="center"><a href="${pageContext.request.contextPath}/drivers/add">register</a></td>
        </tr>
    </table>
</form>
</body>
</html>
