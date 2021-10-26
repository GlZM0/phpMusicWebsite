<?php
include_once "MySQLDatabaseLogger.php";
include_once "Test.php";
include_once "DisplayProducts.php";

class phpStarter
{
    public function starter() {
        //$testObj = new Test();
        //$testObj->getUsersStmt("Izaak", "Gorski");

        $connector = new MySQLDatabaseLogger();
        $connector->connectToDB();

    }
}