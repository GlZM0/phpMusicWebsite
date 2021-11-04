<?php
include_once "MySQLConnection.php";

class RnRWriter
{
    function write()
    {
        $sqlpop = "SELECT p.*, pdi.img FROM Products p INNER JOIN ProductImages pdi ON pdi.product_id = p.id WHERE pdi.is_featured = 1 AND p.type='rock and roll'";
        $obj = new MySQLConnection();
        $handle = $obj->connectToDB()->prepare($sqlpop);
        $handle->execute();
        $getAllProducts = $handle->fetchAll(PDO::FETCH_ASSOC);
        return $getAllProducts;

    }
}