<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
    <style>
        <%@include file="/WEB-INF/style/style.css" %>
    </style>
</head>
    <body>
        <div class="register__wrapper">
            <div class="register">
                <form action="/register" method="post">
                    <div class="inner__form_separator">
                        <label for="name">Name:</label>
                        <input name="name" id="name" type="text">
                        <br>
                        <label for="license_number">License number:</label>
                        <input name="license_number" id="license_number" type="text">
                        <br>
                        <label for="login">Login:</label>
                        <input name="login" id="login" type="text">
                        <br>
                        <label for="password">Password:</label>
                        <input name="password" id="password" type="password">
                        <br>
                        <label for="repeat_password">Repeat password:</label>
                        <input name="repeat_password" id="repeat_password" type="password">
                    </div>
                    <br>
                    <h4 style="color: red">${errorMsg}</h4>
                    <input type="submit" value="create profile">
                </form>
            </div>
        </div>
    </body>
</html>
