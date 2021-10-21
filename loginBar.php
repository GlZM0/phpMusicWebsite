<?php

class loginBar
{
    public function logger() {
        $status = "";
        if($_SERVER['REQUEST_METHOD'] == 'POST') {
            $name = $_POST['name'];
            $email = $_POST['email'];

            if(empty($name) || empty($email)) {
                $status = "All fields are compulsory";
            } else {
                if(strlen($name) >= 255 || !preg_match("/^[a-zA-Z-'\s]+$/", $name)) {
                    $status = "Please enter a valid name";
                } else if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                    $status = "Please enter a valid email";
                } else {

                    $sql = "INSERT INTO Users (firstName)"

                    $status = "Your message was sent";
                    $name = "";
                    $email = "";
                }
            }
        }
    }
}