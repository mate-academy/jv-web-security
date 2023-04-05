<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Project Page</title>
    <link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet">
</head>
<body>
<%@include file="${pageContext.request.contextPath}header.html" %>
<div id="wb_Heading">
    <h1 id="Heading" class="h2">Make you choice</h1>
</div>
<hr id="Line">
<div id="NavigationBar1" style="position:absolute;left:72px;top:180px;width:140px;height:123px;z-index:4;">
    <ul class="navbar">
        <li><a href="cars/create.html"><img src="images/img0001_over.png" class="hover"><span><img src="images/img0001.png"></span></a></li>
        <li><a href=""><img src="images/img0002_over.png" class="hover"><span><img src="images/img0002.png"></span></a></li>
        <li><a href=""><img src="images/img0003_over.png" class="hover"><span><img src="images/img0003.png"></span></a></li>
    </ul>
</div>
<div id="NavigationBar2" style="position:absolute;left:335px;top:180px;width:140px;height:82px;z-index:5;">
    <ul class="navbar">
        <li><a href=""><img src="images/img0004_over.png" class="hover"><span><img src="images/img0004.png"></span></a></li>
        <li><a href=""><img src="images/img0005_over.png" class="hover"><span><img src="images/img0005.png"></span></a></li>
    </ul>
</div>
<div id="NavigationBar3" style="position:absolute;left:571px;top:180px;width:140px;height:82px;z-index:6;">
    <ul class="navbar">
        <li><a href=""><img src="images/img0006_over.png" class="hover"><span><img src="images/img0006.png"></span></a></li>
        <li><a href=""><img src="images/img0007_over.png" class="hover"><span><img src="images/img0007.png"></span></a></li>
    </ul>
</div>
</body>
</html>
