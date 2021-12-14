<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <form method="post" id="login_form" action="${pageContext.request.contextPath}/login">
    <h1 class="table_dark">Login to driver account</h1>
    <table border="1" class="table_dark">
        <tr>
            <th>Login</th>
            <th>Password</th>
            <th>submit</th>
        </tr>
        <tr>
            <td>
                <input type="text" form="login_form" name="login" required><br>
            </td>
            <td>
                <input type="password" name="password" form="login_form" required>
            </td>
            <td>
                <input type="submit" name="add" form="login_form">
            </td>
        <tr/>
    </table>
    </form>
    <h1>${errorMsg}</h1>
    <h2><a href="/drivers/add">Register driver</a></h2>
</body>
</html>
