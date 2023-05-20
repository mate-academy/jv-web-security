function chooseButton() {
    const button = document.getElementById("header_button");
    if (document.title == "Login") {
        button.innerHTML = "Register driver";
        button.onclick = function() {
            document.location = "${pageContext.request.contextPath}/drivers/add";
        }
    } 
    if (document.title == "Add driver") {
        let isLoggedIn = "${is_logged_in}";
        if (!isLoggedIn) {
            button.innerHTML = "Login";
            button.onclick = function() {
                document.location = "${pageContext.request.contextPath}/login";
            }
        }
    } 
}
