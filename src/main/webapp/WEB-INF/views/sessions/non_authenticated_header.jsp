<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cab Service</title>
</head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/WEB-INF/views/css/header_style.css"/>
<header id="header">
    <div id="headerText">Cab Service</div>
    <div id="homepageButton">
        <a href="${pageContext.request.contextPath}/service">
            <div id="homepageButtonColor">Homepage</div>
        </a>
    </div>
    <div id="logInButton">
        <a href="${pageContext.request.contextPath}/login">
            <div id="textButton1">Log in</div>
        </a>
    </div>
    <div id="signUpButton">
        <a href="${pageContext.request.contextPath}/register">
            <div id="textButton2">Sign up</div>
        </a>
    </div>
</header>
</html>