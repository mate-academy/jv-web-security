<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
          rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
          crossorigin="anonymous">
    <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
            crossorigin="anonymous"></script>
    <link href="${pageContext.request.contextPath}/web-resources/css/login_register.css" rel="stylesheet">
</head>
<body class="text-center">
<form method="post" class="form-signin-register">
    <img src="${pageContext.request.contextPath}/web-resources/taxi.svg" alt="" width="172" height="172">
    <h4 class="text-success font-weight-normal">${infoMsg}</h4>
    <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
    <input type="text" name="login" class="form-control" placeholder="Login" required autofocus>
    <input type="password" name="password" class="form-control" placeholder="Password" required>
    <h4 class="text-danger font-weight-normal">${errorMsg}</h4>
    <button class="btn btn-lg btn-primary btn-block mb-3" type="submit">Sign in</button><br>
    <a href="${pageContext.request.contextPath}/register" class="btn btn-lg btn-warning btn-block mb-3" role="button">Register</a>
</form>
<h6>To enter without registering please press:</h6>
<form method="post">
    <input type="hidden" name="login" value="testLogin">
    <input type="hidden" name="password" value="1234">
    <button class="btn btn-lg btn-success btn-block" type="submit">Demo Login</button><br>
</form>
</body>
</html>
