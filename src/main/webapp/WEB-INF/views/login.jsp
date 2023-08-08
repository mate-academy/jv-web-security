<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    .login-container {
        font-family: "Lucida Sans Unicode", "Lucida Grande", Sans-Serif;
        width: 30%;
        color: #7C5FAB;
        font-size: 20px;
        text-align: center;
        background: #FEF4AB;
        margin: auto;
        padding: 20px;
        border: 1px solid #98E2CA;
        border-radius: 5px;
    }

    .login-container h1 {
        padding: 10px;
    }

    .login-container form input[type="text"],
    .login-container form input[type="password"] {
        width: 100%;
        padding: 8px;
        border: 1px solid #98E2CA;
        border-radius: 3px;
    }

    .login-container form button[type="submit"] {
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 5px;
        padding: 10px 20px;
        cursor: pointer;
        width: 100%;
        margin-top: 10px;
    }

    .login-container form button[type="submit"]:hover {
        background-color: #0056b3;
    }

    .login-container h4 {
        text-align: center;
        margin-top: 10px;
    }

    .login-container h4 a {
        color: #007bff;
        text-decoration: none;
    }

    .login-container h4 a:hover {
        text-decoration: underline;
    }

</style>
<div class="login-container">
    <h4 style="color:red">${errorMsg}</h4>
    <h1>Login page</h1>
    <form method="post" action="${pageContext.request.contextPath}/login">
        Please enter your login: <input type="text" name="login" required>
        Please enter your password: <input type="password" name="password" required>
        <button type="submit">Login</button>
    </form>
    <h4><a href="${pageContext.request.contextPath}/register">Register</a></h4>
</div>
