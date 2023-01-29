<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Main</title>
    <style>
        html * {
            font-size: 16px;
            line-height: 1.625;
            color: #000000;
            font-family: Nunito, sans-serif;
        }
    </style>
</head>
<body bgcolor="#ffd700">
<div align="center ">
<%@include file="/WEB-INF/views/header.jsp"%>
<form method="post" id="redirect"></form>
<h1>TAXI SERVICE APP</h1>
    <table align="center">
        <td>
    <h3>DRIVER MENU</h3>
    </form>
    <form action="<c:url value="/drivers/add"/>">
        <input type="submit" value="ADD DRIVER TO DATABASE"/>
    </form>
    </form>
    <form action="<c:url value="/cars/drivers/add"/>">
        <input type="submit" value="ADD DRIVER TO CAR"/>
    </form>
    <form action="<c:url value="/drivers"/>">
        <input type="submit" value="DISPLAY ALL DRIVERS"/>
    </form>
        </td>
        <td align="top">
    <h3>MANUFACTURER MENU</h3>
    <form action="<c:url value="/manufacturers/add"/>">
        <input type="submit" value="ADD MANUFACTURER TO DATABASE"/>
    </form>
    <form action="<c:url value="/manufacturers"/>">
        <input type="submit" value="DISPLAY ALL MANUFACTURERS"/>
    </form>
        </td>
        <td>
    <h3>CAR MENU</h3>
    <form action="<c:url value="/cars/add"/>">
        <input type="submit" value="ADD CAR TO DATABASE"/>
    </form>
    <form action="<c:url value="/cars"/>">
        <input type="submit" value="DISPLAY ALL CARS"/>
    </form>
    <form action="<c:url value="/drivers/cars"/>">
        <input type="submit" value="GET MY CARS"/>
    </form>
        </td>
    </table>
</div>
</body>
</html>
