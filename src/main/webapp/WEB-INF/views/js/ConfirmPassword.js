function confirmPassword() {
    let password = document.forms["driver_form"]["password"].value;
    let confirmPassword = document.forms["driver_form"]["confirm_password"].value;
    if (password != confirmPassword) {
        document.getElementById("error_message").innerHTML = "Passwords don't match. Try again!"
        return false;
    }
}
