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
            </div>
            <div class="products-center">
                <!-- product -->
                    <?php
                    session_start();
                    const PRODUCT_IMG_URL = 'images/';
                    require_once 'MySQLConnection.php';
                    require_once 'Writer.php';
                    $obj = new Writer();

                    foreach ($obj->write() as $product) {
                        $imgUrl = "images/".$product['img'];                  ?>
                <article class="product">
                    <div class="img-container">
                            <a href="single-product.php?product=<?php echo $product['id'] ?>">
                            <img src="<?php echo $imgUrl ?>" alt="<?php echo $product['product_name'] ?>" class="product-img">
                                <button class="bag-btn" data-id="1"><i class="fas fa-shopping-cart"></i>add to bag</button>
                            </a>
                            <h3 class="product-name">
                                <a href="single-product.php?product=<?php echo $product['id'] ?>">
                                    <?php echo $product['product_name'] ?>
                                </a>
                            </h3>
                            <h4>$ <?php echo $product['price'] ?></h4>
                    </div>
                </article>
                    <?php
                    }
                    ?>
                <!-- end -->
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