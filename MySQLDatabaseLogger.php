<?php

class MySQLDatabaseLogger
{
    public function connectToDB() {
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbName = "ShopDataBase";

        try {
            $conn = new PDO("mysql:host=$servername;dbname=$dbName", $username, $password);
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        } catch (PDOException $e) {
            echo "Error in connection" . $e->getMessage();
        }

        define('PRODUCT_IMG_URL', 'images/');

    }
}