<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table align="center">
    <td>
<form action="<c:url value="/logout"/>" >
    <input type="submit" value="Logout" />
</form>
    </td>
    <td>
        <form action="<c:url value="/index"/>" >
            <input type="submit" value="Home" />
        </form>
    </td>
</table>
</body>
</html>
