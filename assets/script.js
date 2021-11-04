function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    console.log("it works");
}

function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
}

function openCart() {
    let vis1 = document.getElementById("cart-overlayid");
    let vis1cart = document.getElementById("cart-menu");
    vis1.style.width = "100%";
    vis1cart.style.padding = "1.5rem";
    vis1cart.style.width = "35%";
}

function closeCart() {
    let vis0 = document.getElementById("cart-overlayid");
    let vis0cart = document.getElementById("cart-menu");
    vis0.style.width = "0%";
    vis0cart.style.width = "0%";
    vis0cart.style.padding = "0";
}