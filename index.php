<?php
include_once "phpStarter.php";

$s = new phpStarter();
$s->starter();

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GoodMusic | Home</title>
    <link rel="stylesheet" href="style.css">
    <script src="script.js"></script>
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
</head>
<body>

    <div class="container">
    <nav class="navbar">
        <div class="navbar-center">
            <span class="nav-icon">
                <div id="mySidenav" class="sidenav">
                    <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                    <a href="#">About</a>
                    <a href="#">Services</a>
                    <a href="#">Clients</a>
                    <a href="#">Contact</a>
                </div>
                <span style="font-size:30px;cursor:pointer" id="toggle" name="toggle" onclick="openNav()">&#9776;</span>
            </span>
            <p style="font-size: 30px">GoodMusic</p>
            <div class="cart-btn">
                <span class="nav-icon">
                <i class='fas fa-cart-plus'></i>
                </span>
                <div class="cart-items">0</div>
            </div>
        </div>
    </nav>
    <!-- end of nav -->
    <header class="hero" id="heroid">
        <div class="hero-image"></div>
        <div class="banner">
            <h1 class="banner-title">Collection</h1>
            <button class="banner-btn">shop now</button>
        </div>
    </header>
    </div>


</body>
</html>