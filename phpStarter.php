<?php
session_start();

include_once "MySQLConnection.php";
include_once "Test.php";

class phpStarter
{
    public function starter() {
        //$testObj = new Test();
        //$testObj->getUsersStmt("Izaak", "Gorski");

        $connector = new MySQLConnection();
        $connector->connectToDB();

    }
}