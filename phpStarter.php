<?php
include_once "MySQLDatabaseLogger.php";
include_once "Test.php";
include_once "LoginApp.php";

class phpStarter
{
    public function starter() {
        $testObj = new Test();
        $testObj->getUsersStmt("Klemens", "Rutkowski");
    }
}