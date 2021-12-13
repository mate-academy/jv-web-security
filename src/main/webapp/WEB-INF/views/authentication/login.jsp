<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h1>Please login to continue work</h1>
<h4 style="color:red">${errorMsg}</h4>
<tr>
    <td>
        <form method="post" action="${pageContext.request.contextPath}/login">
            Login <input type="text" name="login" required>
            Password <input type="password" name="password" required>
            <button type="submit">Login</button>
        </form>
    </td>
</tr>
<h4><a href="${pageContext.request.contextPath}/drivers/add">Registration</a> </h4>
</body>
</html>
