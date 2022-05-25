<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title>Login</title>
    </head>
    <body>
        <h1>Login page</h1>
        <h4 style="color:red">${errorMsg}</h4>
        <form method="post" action="${pageContext.request.contextPath}/login">
            <div>
                <label>Login:</label>
                <input type="text" name="login"/>
            </div>
            <div>
                <label>Password:</label>
                <input type="password" name="password">
            </div>
                <button type="submit">Sign in</button>
        </form>
        <button>
            <a href="${pageContext.request.contextPath}/drivers/add">Sign up</a>
        </button>
    </body>
</html>
