<?php
echo "<pre>";

    print_r($_POST);

echo "</pre>";

    $email = $_POST['email'];
    $message = $_POST['message'];

    $to = "mail@blah.com";
    $body = "";

    $body .= "Email: ".$email. "\r\n";
    $body .= "Message: ".$message. "\r\n";

    mail($to);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GoodMusic | About</title>
    <link rel="stylesheet" href="assets/style.css">
    <script src="assets/script.js"></script>
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
</head>
<body>

<div class="container">
    <!-- nav -->
    <nav class="navbar">
        <div class="navbar-center">
            <span class="nav-icon">
                <div id="mySidenav" class="sidenav">
                    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                    <a href="#">About</a>
                    <a href="#">Services</a>
                    <a href="#">Clients</a>
                    <a href="ContactSite.php">Contact</a>
                </div>
                <span class="menu3" id="toggle" name="toggle" onclick="openNav()"><div class="burger">&#9776;</div></span>
            </span>
            <p class="logo-p"><a href="index.php" class="logo">GoodMusic</a></p>
            <div class="cart-btn">
                <span class="nav-icon" onclick="openCart()">
                <i class='fas fa-cart-plus'></i>
                </span>
                <div class="cart-items">0</div>
            </div>
        </div>
    </nav>
    <!-- end of nav -->
    <section class="contact-section">
        <div class="con-div">
            <h2>Contact us</h2>
        </div>
        <div class="contact-form">
            <form method="post" action="ContactSite.php">
                <div class="email-div">
                    <input type="text" placeholder="E-mail" name="email" class="input-email">
                </div>
                <div class="message-div">
                    <textarea class="input-message" name="message" placeholder="Message"></textarea>
                </div>
                <div class="button-submit">
                    <button type="submit" class="button-s" name="submit-button">SEND</button>
                </div>
            </form>
        </div>
    </section>

    <!-- cart -->
    <div class="cart-overlay" id="cart-overlayid">
        <div class="cart" id="cart-menu">
                    <span class="close-cart" onclick="closeCart()">
                        <i class="fas fa-window-close"></i>
                    </span>
            <h2>Your cart</h2>
            <div class="cart-content">
                <!-- cart item -->
                <div class="cart-item">
                    <img src="images/four-w-iext73628681.jpg" alt="product">
                    <div>
                        <h4>One Direction Four</h4>
                        <h5>$9.00</h5>
                        <span class="remove-item">remove</span>
                    </div>
                    <div>
                        <i class="fas fa-chevron-up"></i>
                        <p class="item-amount">1</p>
                        <i class="fas fa-chevron-down"></i>
                    </div>
                </div>
                <!-- end of cart item -->
            </div>
            <div class="cart-footer">
                <h3>Your total : $ <span class="cart-total">0</span></h3>
                <button class="clear-cart banner-btn">clear cart</button>
            </div>
        </div>
    </div>
    <!-- end of cart -->
</div>
</body>
</html>