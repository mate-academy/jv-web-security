<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/style.css' %>
</style>
<html>
<head>
    <title>Log In</title>
</head>
<body>
<div class="display-div">
    <div>
        <h2>Log In</h2>
        <h4 style="color: brown">${errorMsg}</h4>
        <form method="post" action="${pageContext.request.contextPath}/login">
            Login <input class="text-field_input" type="text" name="login"><br>
            Password <input class="text-field_input" type="password" name="password"><br>
            <button class="button-confirm" type="submit">Confirm</button>
        </form>
    </div>
</div>
</body>
</html>
