<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>REGISTRATION</title>
</head>
<body>
    <%@include file="/WEB-INF/views/header/menu.jsp"%>
    <h1>Registration new driver</h1>
    <form method="post" action="${pageContext.request.contextPath}/drivers/create">
        <table>
            <tr>
                <td><label for="name">Name:</label></td>
                <td><input type="text" id="name" name="name" placeholder="write name here"><br /></td>
            </tr>
            <tr>
                <td><label for="user_name">Username:</label></td>
                <td><input type="text" id="user_name" name="user_name" placeholder="write username here"><br /></td>
            </tr>
            <tr>
                <td><label for="password">Password:</label></td>
                <td><input type="password" id="password" name="password" placeholder="write password here"><br /></td>
            </tr>
            <tr>
                <td><label for="license_number">License number:</label></td>
                <td><input type="text" id="license_number" name="license_number"
                           placeholder="write license number here"><br /></td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="Add to DB">
                    <input type="reset" value="reset">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
