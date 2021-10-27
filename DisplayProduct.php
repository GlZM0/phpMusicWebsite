<?php
session_start();
include_once 'Config.php';

$sql = "SELECT p.*, pdi.img FROM Products p INNER JOIN ProductImages pdi ON pdi.product_id = p.id WHERE pdi.is_featured = 1";
$handle = 
$handle->execute();
$getAllProducts = $handle->fetchAll(PDO::FETCH_ASSOC);
return $getAllProducts;