<?php
include_once "phpStarter.php";
include_once "DisplayProducts.php";

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
                    <a href="#">Contact</a>
                </div>
                <span class="menu3" id="toggle" name="toggle" onclick="openNav()"><div class="burger">&#9776;</div></span>
            </span>
            <p class="logo">GoodMusic</p>
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
                <h2>Pop</h2>
                <?php
                echo (isset($_SESSION['cart_items']) && count($_SESSION['cart_items'])) > 0 ? count($_SESSION['cart_items']):'';
                ?>
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
            <div class="section-title">
                <h2>Rock</h2>
            </div>
            <div class="products-center">
                <!-- single product -->
                <arcitle class="product">
                    <div class="img-container">
                        <img src="images/four-w-iext73628681.jpg" alt="Four" class="product-img">
                        <button class="bag-btn" data-id="5"><i class="fas fa-shopping-cart"></i>add to bag</button>
                    </div>
                    <h3>One Direction Four</h3>
                    <h4>$16</h4>
                </arcitle>
                <!-- end of single product -->
                <!-- single product -->
                <arcitle class="product">
                    <div class="img-container">
                        <img src="images/One-Direction-Take-Me-Home-Standard-HQ-2012.jpg" alt="Take Me Home" class="product-img">
                        <button class="bag-btn" data-id="6"><i class="fas fa-shopping-cart"></i>add to bag</button>
                    </div>
                    <h3>One Direction Take Me Home</h3>
                    <h4>$12</h4>
                </arcitle>
                <!-- end of single product -->
                <!-- single product -->
                <arcitle class="product">
                    <div class="img-container">
                        <img src="images/up-all-night-b-iext36377737.jpg" alt="Up All Night" class="product-img">
                        <button class="bag-btn" data-id="7"><i class="fas fa-shopping-cart"></i>add to bag</button>
                    </div>
                    <h3>One Direction Up All Night</h3>
                    <h4>$19</h4>
                </arcitle>
                <!-- end of single product -->
                <!-- single product -->
                <arcitle class="product">
                    <div class="img-container">
                        <img src="images/One-direction-steal-my-girl.jpg" alt="Steal My Girl" class="product-img">
                        <button class="bag-btn" data-id="8"><i class="fas fa-shopping-cart"></i>add to bag</button>
                    </div>
                    <h3>One Direction Steal My Girl</h3>
                    <h4>$13</h4>
                </arcitle>
                <!-- end of single product -->
                <!-- generated product -->
                <article class="product">
                    <div class="row">

                    </div>
                </article>
                <!-- end of generated product -->
            </div>
        </section>
                <!-- end of products -->
                <!-- cart -->
        <div class="cart-overlay">
            <div class="cart">
                <span class="close-cart">
                    <i class="fas fa-window-close"></i>
                </span>
                <h2>Your Cart</h2>
                <div class="cart-content">
                    <!-- cart item -->
                        <div class="cart-item">
                            <img src="images/four-w-iext73628681.jpg" alt="Four">
                            <div>
                                <h4>One Direction Four</h4>
                                <h5>$16</h5>
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
                    <h3>Your Total: $ <span class="cart-total">0</span></h3>
                    <button class="clear-cart banner-btn">clear cart</button>
                </div>
            </div>
        </div>
                <!-- end of cart -->
    </div>


</body>
</html>