<?php

class loginBar extends MySQLDatabaseLogger
{
    public function logger() {
        $status = "";
        if($_SERVER['REQUEST_METHOD'] == 'POST') {
            $login = $_POST['login'];
            $email = $_POST['email'];
            $password = $_POST['password'];

            if(empty($login) || empty($email) || empty($password)) {
                $status = "All fields are compulsory";
            } else {
                if(strlen($login) >= 255 || !preg_match("/^[a-zA-Z-'\s]+$/", $login)) {
                    $status = "Please enter a valid login";
                } else if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                    $status = "Please enter a valid email";
                } else if(strlen($password) >= 255 || !preg_match("/^[a-zA-Z-'\s]+$/", $password)) {
                    $status = "Please enter a valid password";
                } else {

                    $sql = "INSERT INTO LoginData (login, password, email) VALUES (:login, :password, :email)";
                    $stmt = $this->connectToDB()->prepare($sql);

                    $stmt->execute(['login' => $login, 'email' => email, 'password' => $password]);

                    $status = "Your message was sent";
                    $name = "";
                    $email = "";
                    $password = "";
                }
            }
        }
    }
}