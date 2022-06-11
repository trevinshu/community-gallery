<?php
include("../includes/header.php");
?>
<?php
// show potential errors / feedback (from login object)
if (isset($login)) {
    if ($login->errors) {
        foreach ($login->errors as $error) {
            echo $error;
        }
    }
    if ($login->messages) {
        foreach ($login->messages as $message) {
            echo $message;
        }
    }
}
?>
&nbsp;&nbsp;
<!-- login form box -->
<form method="post" action="index.php" name="loginform">

    <div class="form-group">
        <label for="login_input_username">Username</label>
        <input id="login_input_username" class="login_input" type="text" name="user_name" required class="form-control" />
    </div>

    <div class="form-group">
        <label for="login_input_password">Password</label>
        <input id="login_input_password" class="login_input" type="password" name="user_password" autocomplete="off" required class="form-control" />
    </div>
    <div class="form-group">
        <input type="submit" name="login" value="Log in" class="btn btn-success" />
        <a href="register.php">Register new account</a>
    </div>
</form>