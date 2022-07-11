<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form>
    <button type="submit" formaction="${pageContext.request.contextPath}/index">To main page</button>
    <button type="submit" formaction="${pageContext.request.contextPath}/driver/myCars">My Current Cars</button>
    <button type="submit" formaction="${pageContext.request.contextPath}/logout">Logout</button>
</form>
</body>
</html>
