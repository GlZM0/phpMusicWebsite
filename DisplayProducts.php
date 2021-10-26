<?php

class DisplayProducts extends MySQLDatabaseLogger
{

    public function getItem($name) {
        session_start();

        $sql = "SELECT name, price, imagePath FROM Items";
        $handle = $this->connectToDB()->prepare($sql);
        $handle->execute();
        $getAllProducts = $handle->fetchAll(PDO::FETCH_ASSOC);
    }
}