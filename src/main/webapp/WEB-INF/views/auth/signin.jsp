<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">
    <title>Taxi | SignIn</title>
</head>

<body>
<div class="container">

    <div class="offset-md-10 col-md-1 d-flex align-items-center mb-5 mt-3">
        <a href="${pageContext.request.contextPath}/signup" type="button" class="text-decoration-none">SignUp</a>
    </div>

    <div class="text-danger text-center">
        <h4>${errorMessage}</h4>
    </div>
    <h3>Enter login and password</h3>
    <form method="post" action="${pageContext.request.contextPath}/signin">
        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="login" name="login"
                   placeholder="Enter login.">
            <label for="login">Enter login.</label>
        </div>
        <div class="form-floating mb-3">
            <input type="password" class="form-control" id="password" name="password"
                   placeholder="Enter password.">
            <label for="password">Enter password.</label>
        </div>
        <div class="d-md-flex justify-content-md-end">
            <button type="submit" class="btn btn-outline-primary">SignIn</button>
        </div>
    </form>
</div>
</body>

</html>
