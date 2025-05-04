<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Add Driver to Car</title>
    <link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet">
</head>
<body>
<%@include file="${pageContext.request.contextPath}header.html" %>
<div id="wb_Heading">
    <h2 id="Heading">
        Fill bellow form to add new Driver for Car and then to save press
        'Submit' button</h2>
</div>
<div id="wb_Form" style="position:absolute;left:133px;top:120px;width:534px;height:332px;z-index:14;">
    <form
            name="AddDriver_Form"
            method="post"
            action="/"
            enctype="multipart/form-data"
            accept-charset="UTF-8"
            target="_self"
            id="Form"
            onsubmit="">
        <input
                type="text"
                id="Editbox1"
                class="Editbox"
                style="position:absolute;left:222px;top:56px;width:190px;height:16px;z-index:0;"
                name="driver_id"
                value=""
                spellcheck="false">
        <label
                for="Editbox1"
                id="Label1"
                class="Label"
                style="position:absolute;left:10px;top:15px;width:165px;height:16px;line-height:16px;z-index:1;">Input Driver ID</label>
        <input
                type="text"
                id="Editbox2"
                class="Editbox"
                style="position:absolute;left:222px;top:15px;width:190px;height:16px;z-index:2;"
                name="driver_name"
                value=""
                spellcheck="false">
        <label
                for="Editbox2"
                id="Label2"
                class="Label"
                style="position:absolute;left:10px;top:56px;width:177px;height:16px;line-height:16px;z-index:3;">Input Driver name</label>
        <input
                type="text"
                id="Editbox3"
                class="Editbox"
                style="position:absolute;left:222px;top:95px;width:190px;height:16px;z-index:7;"
                name="license_number"
                value=""
                spellcheck="false">
        <label
                for="Editbox3"
                id="Label3"
                class="Label"
                style="position:absolute;left:10px;top:96px;width:165px;height:16px;line-height:16px;z-index:5;">Input Driver licence number</label>
        <input
                type="text"
                id="Editbox4"
                class="Editbox"
                style="position:absolute;left:222px;top:147px;width:190px;height:16px;z-index:8;"
                name="car_id"
                value=""
                spellcheck="false">
        <label
                for="Editbox4"
                id="Label4"
                class="Label"
                style="position:absolute;left:10px;top:149px;width:177px;height:16px;line-height:16px;z-index:6;">Input Car ID</label>
        <input
                type="text"
                id="Editbox5"
                class="Editbox"
                style="position:absolute;left:222px;top:191px;width:190px;height:16px;z-index:11;"
                name="model"
                value=""
                spellcheck="false">
        <label
                for="Editbox5"
                id="Label5"
                class="Label"
                style="position:absolute;left:10px;top:191px;width:165px;height:16px;line-height:16px;z-index:9;">Input model of Car</label>
        <input
                type="text"
                id="Editbox6"
                class="Editbox"
                style="position:absolute;left:222px;top:232px;width:190px;height:16px;z-index:12;"
                name="manufacturer_id"
                value=""
                spellcheck="false">
        <label
                for="Editbox6"
                id="Label6"
                class="Label"
                style="position:absolute;left:10px;top:232px;width:177px;height:16px;line-height:16px;z-index:10;">Input Manufacturer ID</label>
        <input
                type="submit"
                id="Button"
                class="Button"
                name="Button"
                value="Submit"
                style="position:absolute;left:219px;top:286px;width:96px;height:25px;z-index:4;">
    </form>
</div>
<div id="wb_Heading2" style="position:absolute;left:54px;top:305px;width:221px;height:32px;z-index:2;">
    <h5 id="Heading2">
        <a href="${pageContext.request.contextPath}/index">Return to start page</a>
    </h5>
</div>
</body>
</html>