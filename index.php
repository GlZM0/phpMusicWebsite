<?php
include_once "phpStarter.php";
include_once "loginBar.php";

$s = new phpStarter();
$s->starter();

$status = "";
if($_SERVER['REQUEST_METHOD'] == 'POST') {
    $login = $_POST['login'];
    $email = $_POST['email'];
    $password = $_POST['password'];

    if(empty($login) || empty($email) || empty($password)) {
        $status = "All fields are compulsory";
    } else {
        if(strlen($login) >= 255 || !preg_match("/^[a-zA-Z-'\s]+$/", $login)) {
            $status = "Please enter a valid login";
        } else if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $status = "Please enter a valid email";
        } else if(strlen($password) >= 255 || !preg_match("/^[a-zA-Z-'\s]+$/", $password)) {
            $status = "Please enter a valid password";
        } else {

            $sql = "INSERT INTO LoginData (login, password, email) VALUES (:login, :password, :email)";
            $stmt = $this->connectToDB()->prepare($sql);

            $stmt->execute(['login' => $login, 'email' => email, 'password' => $password]);

            $status = "Your message was sent";
            $name = "";
            $email = "";
            $password = "";
        }
    }
}
?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>
<body>
<div class="container">
    <h1>Contact Us Here</h1>

    <form action="" method="POST" class="main-form">
        <div class="form-group">
            <label for="name">Full Name</label>
            <input type="text" name="login" id="login" class="gt-input"
                   value="<?php if($_SERVER['REQUEST_METHOD'] == 'POST') echo $login ?>">
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <input type="text" name="email" id="email" class="gt-input"
                   value="<?php if($_SERVER['REQUEST_METHOD'] == 'POST') echo $email ?>">
        </div>

        <div class="form-group">
            <label for="password"">Password</label>
            <input name="password" id="password" class="gt-input gt-text"><?php if($_SERVER['REQUEST_METHOD'] == 'POST') echo $password ?></input>
        </div>

        <input type="submit" class="gt-button" value="Submit">

        <div class="form-status">
            <?php echo $status ?>
        </div>
    </form>
</div>

<script src="main.js"></script>
</body>
</html>