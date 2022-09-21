<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">
    <title>Taxi | SignUp</title>
</head>

<body>
<div class="container">
    <div class="mb-5 mt-5" />
    <h3>Create new driver</h3>
    <form method="post" action="${pageContext.request.contextPath}/signup">
        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="login" name="login"
                   placeholder="Enter login.">
            <label for="name">Enter login.</label>
        </div>
        <div class="form-floating mb-3">
            <input type="password" class="form-control" id="password" name="password"
                   placeholder="Enter password.">
            <label for="name">Enter password.</label>
        </div>

        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="name" name="name"
                   placeholder="Enter driver name.">
            <label for="name">Enter driver name.</label>
        </div>
        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="license_number" name="license_number"
                   placeholder="Enter driver's license number.">
            <label for="license_number">Enter driver's license number.</label>
        </div>
        <div class="d-md-flex justify-content-md-end">
            <button type="submit" class="btn btn-outline-primary">Create</button>
        </div>
    </form>
</div>
</body>

</html>
