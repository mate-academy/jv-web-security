<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">
    <title>Taxi | Manufacturers : Add manufacturer</title>
</head>

<body>
<%@ include file="../toolbar/header.jsp"%>
<div class="container">
    <h3>Create new manufacturer</h3>
    <form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="name" name="name"
                   placeholder="Enter manufacturer name.">
            <label for="name">Enter manufacturer name.</label>
        </div>
        <div class="form-floating mb-3">
            <input type="text" class="form-control" id="country" name="country"
                   placeholder="Enter manufacturer's country.">
            <label for="country">Enter manufacturer's country.</label>
        </div>
        <div class="d-md-flex justify-content-md-end">
            <button type="submit" class="btn btn-outline-primary">Create</button>
        </div>
    </form>
</div>
</body>
</html>
