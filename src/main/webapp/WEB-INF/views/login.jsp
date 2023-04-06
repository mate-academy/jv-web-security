<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Login dialog</title>
<link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet">
</head>
<body>
<div id="wb_Login" style="position:absolute;left:420px;top:150px;width:399px;height:258px;">
    <form name="loginform" method="post" accept-charset="UTF-8" action="${pageContext.request.contextPath}" id="loginform">
        <table id="Login">
            <tr>
                <td class="header">Log In</td>
            </tr>
            <tr>
                <td class="label"><label for="username">User Name (Driver)</label></td>
            </tr>
            <tr>
                <td class="row"><input class="input" name="username" type="text" id="username" value=""></td>
            </tr>
            <tr>
                <td class="label"><label for="password">Password</label></td>
            </tr>
            <tr>
                <td class="row"><input class="input" name="password" type="password" id="password" value=""></td>
            </tr>
            <tr>
                <td style="text-align:center;vertical-align:bottom"><input class="button" type="submit" name="login" value="Log In" id="login"></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>