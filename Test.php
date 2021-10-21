<?php

class Test extends MySQLDatabaseLogger
{

    public function getUsers() {
        $sql = "SELECT * FROM Users";
        $stmt = $this->connectToDB()->query($sql);
        while($row = $stmt->fetch()) {
            echo '<br>' . $row['id'] . $row['firstName'] . $row['surName'] . $row['email'] . $row['address'] . $row['postCode'];
        }
    }

    public function getUsersStmt($firstName, $surName) {
        $sql = "SELECT * FROM Users WHERE firstName = ? AND surName = ?";
        $stmt = $this->connectToDB()->prepare($sql);
        $stmt->execute([$firstName, $surName]);
        $names = $stmt->fetchAll();

        foreach ($names as $name) {
            echo $name['firstName'] . '<br>';
        }
    }

}