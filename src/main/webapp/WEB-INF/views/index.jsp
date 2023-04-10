<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Taxi Service</title>
    <style>
        body {
            background-color: #f2f2f2;
            font-family: Arial, sans-serif;
            font-size: 16px;
            line-height: 0.5;
            margin: 0;
            padding: 0;
        }
        .navbar {
            background-color: #f5deb3;
            height: 30px;
            top: 0;
            width: 100%;
            border-bottom: 1px solid brown;
            position: fixed;
        }
        .navbar h1 {
            color: black;
            font-size: 24px;
            margin: 0;
            padding: 5px;
            text-align: center;
            text-transform: uppercase;
        }
        .navbar ul {
            background-color: #f5deb3;
            list-style-type: none;
            margin: 0;
            padding: 0;
            text-align: center;
        }
        .navbar li {
            background-color: #f5deb3;
            display: inline-block;
            margin: 0;
            padding: 0;
        }
        .navbar a {
            color: #333;
            display: block;
            font-size: 14px;
            line-height: 30px;
            margin: 0 10px;
            text-decoration: none;
            text-transform: uppercase;
            transition: all 0.3s ease;
        }
        .navbar a:hover {
            color: #ffdb58;
        }
        .navbar ul:last-child {
            background-color: #f5deb3;
        }
    </style>
</head>
<body>
<div class="navbar">
    <ul style="background-color: #fff">
        <li style="background-color: #fff"><h1>Taxi <span style="color: #ffdb58">Service</span></h1></li>
    </ul>
    <ul>
        <li><a href="${pageContext.request.contextPath}/cars">Display All Cars</a></li>
        <li><a href="${pageContext.request.contextPath}/drivers">Display All Drivers</a></li>
        <li><a href="${pageContext.request.contextPath}/manufacturers">Display All Manufacturers</a></li>
        <li><a href="${pageContext.request.contextPath}/drivers/cars">My cars</a></li>
    </ul>
    <ul>
        <li><a href="${pageContext.request.contextPath}/cars/add">Create new Car</a></li>
        <li><a href="${pageContext.request.contextPath}/drivers/add">Create new Driver</a></li>
        <li><a href="${pageContext.request.contextPath}/manufacturers/add">Create new Manufacturer</a></li>
        <li><a href="${pageContext.request.contextPath}/logout">Logout</a></li>
    </ul>
</div>
</body>
</html>