<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>Register</title>
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
    <img src="${pageContext.request.contextPath}/web-resources/steering-wheel.svg" alt="" width="172" height="172">
    <h1 class="h3 mb-3 font-weight-normal">Driver registration</h1>
    <input type="text" name="name" class="form-control" placeholder="Name" required autofocus>
    <input type="text" name="license_number" class="form-control" placeholder="License number" required>
    <input type="text" name="login" class="form-control" placeholder="Login" required>
    <input type="password" name="password" class="form-control" placeholder="Password" required>
    <h4 class="text-danger font-weight-normal">${errorMsg}</h4>
    <button class="btn btn-lg btn-primary btn-block mb-3" type="submit">Register</button>
</form>
</body>
</html>

