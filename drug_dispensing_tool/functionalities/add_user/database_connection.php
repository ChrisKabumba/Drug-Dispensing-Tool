<?php
$db_url = "localhost";
$db_name = "drug_dispensing_db";
$username = "root";
$password = "";

$conn = new mysqli($db_url, $username, $password, $db_name);

if($conn->connect_error){
    die("Connection to the database failed: " .$conn->connect_error);
}

?>