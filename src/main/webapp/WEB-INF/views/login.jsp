<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>login</title>
</head>
<body>
    <h4 style="color: red">${errorMassage}</h4>
    <form method="post" id="login" action="${pageContext.request.contextPath}/login"></form>
    <h1 class="table_dark">LOGIN PAGE</h1>
    <table border="1" class="table_dark">
        <tr>
            <th>Login</th>
            <th>Password</th>
            <th>LOGIN</th>
        </tr>
        <tr>
            <td>
                <input type="text" name="login" form="login" required>
            </td>
            <td>
                <input type="text" name="password" form="login" required>
            </td>
            <td>
                <input type="submit" name="LOGIN" form="login">
            </td>
        </tr>
    </table>
    <div class="container">
        <form action="${pageContext.request.contextPath}/drivers/add" target="_self">
            <button>REGISTER</button>
        </form>
    </div>
</body>
</html>
