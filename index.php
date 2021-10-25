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
        <!-- nav -->
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
        <!-- main -->
    <header class="hero" id="heroid">
        <div class="hero-image"></div>
        <div class="banner">
            <h1 class="banner-title">Collection</h1>
            <button class="banner-btn" role="button"><span class="text">Shop now</span></button>
        </div>
    </header>
        <!-- end of main -->
        <!-- products -->
        <section class="products">
            <div class="section-title">
                <h2>our products</h2>
            </div>
            <div class="products-center">
                <!-- single product -->
                    <arcitle class="product">
                        <div class="img-container">
                            <img src="images/four-w-iext73628681.jpg" alt="Four" class="product-img">
                            <button class="bag-btn" data-id="1"><i class="fas fa-shopping-cart"></i>add to bag</button>
                        </div>
                        <h3>One Direction Four</h3>
                        <h4>$16</h4>
                    </arcitle>
                <!-- end of single product -->
                <!-- single product -->
                <arcitle class="product">
                    <div class="img-container">
                        <img src="images/One-Direction-Take-Me-Home-Standard-HQ-2012.jpg" alt="Take Me Home" class="product-img">
                        <button class="bag-btn" data-id="2"><i class="fas fa-shopping-cart"></i>add to bag</button>
                    </div>
                    <h3>One Direction Take Me Home</h3>
                    <h4>$12</h4>
                </arcitle>
                <!-- end of single product -->
                <!-- single product -->
                <arcitle class="product">
                    <div class="img-container">
                        <img src="images/up-all-night-b-iext36377737.jpg" alt="Up All Night" class="product-img">
                        <button class="bag-btn" data-id="3"><i class="fas fa-shopping-cart"></i>add to bag</button>
                    </div>
                    <h3>One Direction Up All Night</h3>
                    <h4>$19</h4>
                </arcitle>
                <!-- end of single product -->
                <!-- single product -->
                <arcitle class="product">
                    <div class="img-container">
                        <img src="images/One-direction-steal-my-girl.jpg" alt="Steal My Girl" class="product-img">
                        <button class="bag-btn" data-id="4"><i class="fas fa-shopping-cart"></i>add to bag</button>
                    </div>
                    <h3>One Direction Steal My Girl</h3>
                    <h4>$13</h4>
                </arcitle>
                <!-- end of single product -->
            </div>
        </section>
    </div>


</body>
</html>