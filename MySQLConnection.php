<?php

class MySQLConnection
{
    public function connectToDB() {
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbName = "ShopDataBase";

        try {
            $conn = new PDO("mysql:host=$servername;dbname=$dbName", $username, $password);
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $conn;

        } catch (PDOException $e) {
            echo "Error in connection" . $e->getMessage();
            die();
        }
    }
}