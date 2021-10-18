<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>My team</title>
</head>
<body>
<form method="post" id="redirect"></form>
<h1 class="table_dark">Hello, mates</h1>
<table class="table_dark">
    <tr>
        <th>Redirect to</th>
    </tr>
    <tr><td><form action="${pageContext.request.contextPath}/drivers/all">
        <button>Display All Drivers</button>
    </form></td></tr>
    <tr><td><form action="${pageContext.request.contextPath}/cars/all">
        <button>Display All Cars</button>
    </form></td></tr>
    <tr><td><form action="${pageContext.request.contextPath}/cars/my">
        <button>Display your cars</button>
    </form></td></tr>
    <tr><td><form action="${pageContext.request.contextPath}/manufacturers/all">
        <button>Display All Manufacturers</button>
    </form></td></tr>
    <tr><td><form action="${pageContext.request.contextPath}/drivers/add">
        <button>Create new Driver</button>
    </form></td></tr>
    <tr><td><form action="${pageContext.request.contextPath}/cars/add">
        <button>Create new Car</button>
    </form></td></tr>
    <tr><td><form action="${pageContext.request.contextPath}/manufacturers/add">
        <button>Create new Manufacturer</button>
    </form></td></tr>
    <tr><td><form action="${pageContext.request.contextPath}/cars/drivers/add">
        <button>Add Driver to Car</button>
    </form></td></tr>
</table>
<form action="${pageContext.request.contextPath}/logout">
    <button>Logout</button>
</form>
</body>
</html>
