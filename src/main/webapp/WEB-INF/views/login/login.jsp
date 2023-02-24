<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
  <style>
    .page-wrapper {
      width: 100%;
      height: 100%;
      display: flex;
      justify-content: center;
      align-items: center;
    }
    label {
      margin-bottom: 10px;
      display: block;
    }

    form {
      padding: 15px;
      border: 1px solid grey;
      border-radius: 15px;
      background-color: lightgoldenrodyellow;
    }
    .login__title {
      margin: 0 0 10px 0;
    }

  </style>
</head>
<body>
  <div class="page-wrapper">
    <div class="form-wrapper">
      <form method="post" name="login-form" action="${pageContext.request.contextPath}/login">
        <h3 class="login__title">Login</h3>
        <label>Username:<br>
          <input type="text" name="username" value="username" required>
        </label>
        <label>Password:<br>
          <input type="password" name="password" value="password">
        </label>
        <h4 style="color: firebrick">${errorMsg}</h4>
        <div style="display: flex; width: 100%; gap: 10px; justify-content: space-between">
          <button type="submit">Sign In</button>
          <button type="button" onclick="location.href = '${pageContext.request.contextPath}/drivers/add'">
            Sign Up
          </button>
        </div>
      </form>
    </div>
  </div>
</body>
</html>
