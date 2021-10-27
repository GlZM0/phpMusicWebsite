<?php
include_once 'MySQLConnection.php';

class Writer {
    function write() {
        $sql = "SELECT p.*, pdi.img FROM Products p INNER JOIN ProductImages pdi ON pdi.product_id = p.id WHERE pdi.is_featured = 1";
        $obj = new MySQLConnection();
        $handle = $obj->connectToDB()->prepare($sql);
        $handle->execute();
        $getAllProducts = $handle->fetchAll(PDO::FETCH_ASSOC);
        return $getAllProducts;

    }
}