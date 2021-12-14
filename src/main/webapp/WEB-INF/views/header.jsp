<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title>Header</title>
</head>
<body>
    <button style="color: aliceblue;font-size: 20px; background-color: dimgray;border: none" type="submit">
        <a style="text-decoration: none; color: whitesmoke" href="${pageContext.request.contextPath}/logout">
            Log out
        </a>
    </button>
    <button style="color: aliceblue;font-size: 20px; background-color: dimgray; border: none">
        <a style="text-decoration: none; color: whitesmoke" href="${pageContext.request.contextPath}/">
            To main page
        </a>
    </button>
</body>
</html>
